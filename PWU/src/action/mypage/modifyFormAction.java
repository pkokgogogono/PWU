package action.mypage;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import vo.mypage.*;

public class modifyFormAction implements CommandAction {
	
	 public String requestPro(HttpServletRequest request,
		        HttpServletResponse response)throws Throwable {
		 
			request.setCharacterEncoding("euc-kr");
			String res = "config.xml";
		
			InputStream is;
			try {
				is = Resources.getResourceAsStream(res);
			

			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			SqlSession session = factory.openSession();
			
			mypageVo vo = new mypageVo(request.getParameter("id"),request.getParameter("passwd"), request.getParameter("name"),
					request.getParameter("zipcode"),request.getParameter("address"),request.getParameter("email"),1);
			
			
			session.insert("mypage.insert", vo);
			
			
			


			session.commit();

			session.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		 
		 return "/mypage/modifyForm.jsp";
			}

}
