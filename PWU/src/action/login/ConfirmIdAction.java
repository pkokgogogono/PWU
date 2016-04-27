package action.login;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.mypage.CommandAction;

public class ConfirmIdAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");
		String res = "config.xml";
		int check = 0;
	
		InputStream is;
		try {
			is = Resources.getResourceAsStream(res);
		

		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = factory.openSession();
        
<<<<<<< HEAD
		
=======
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git

		if(session.selectOne("member.idcheck",request.getParameter("id"))==null){	
		}
		else{
			check =1;
		}
		request.setAttribute("check", check);
		
	/*	session.selectOne("member.idcheck",);
		session.selectList(arg0);
		session.insert(arg0);
		session.update(arg0);
		session.delete(arg0);*/


		session.commit();

		session.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    
		return "/login/confirmId.jsp";
	}
  

}
       