package action;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.MemberVo;


public class IndexFormAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");
		String res = "config.xml";
	
		InputStream is;
		try {
			is = Resources.getResourceAsStream(res);
		

		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = factory.openSession();

		MemberVo vo = new MemberVo("test","test", "test","test","test","test",0);
		int n = session.insert("member.insert", vo);


		session.commit();

		session.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	    
		return "/index.jsp";
	}
  

}
       