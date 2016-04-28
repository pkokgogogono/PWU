package action.fashion;

import java.io.IOException;
import java.io.InputStream;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.login.CommandAction;

import vo.fashionBoardVo;

public class mainProAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
System.out.println("wefwefoij");
		request.setCharacterEncoding("euc-kr");
		String res = "config.xml";
	
		InputStream is;
		try {
			is = Resources.getResourceAsStream(res);
		

		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = factory.openSession();

	   System.out.println(request.getParameter("title")+"tt");
		
		fashionBoardVo vo = new fashionBoardVo(request.getParameter("title"),
				request.getParameter("p_name"),
				Integer.parseInt(request.getParameter("p_price")),
				request.getParameter("content"));
		
		int n = session.insert("fashion.insert", vo);

		session.commit();

		session.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "/fashion/admin/write_save.jsp";
	}

  
}
