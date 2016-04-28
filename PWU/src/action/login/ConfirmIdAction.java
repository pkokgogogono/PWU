package action.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
<<<<<<< HEAD

import action.CommandAction;
import dao.login.LoginDao;



=======

<<<<<<< HEAD
import action.CommandAction;
import dao.login.LoginDao;
=======
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.mypage.CommandAction;
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git

public class ConfirmIdAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");
		int check = 0;
 
		LoginDao logindao = LoginDao.getInstance();		

<<<<<<< HEAD
		if(logindao.idCheck(request.getParameter("id"))==null){	
			
=======
<<<<<<< HEAD
		if(logindao.idCheck(request.getParameter("id"))==null){	
=======
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = factory.openSession();
        
//<<<<<<< HEAD
		
//=======
//>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git

		if(session.selectOne("member.idcheck",request.getParameter("id"))==null){	
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git
		}
		else{
			check =1;
		}
		request.setAttribute("check", check);
<<<<<<< HEAD

=======
<<<<<<< HEAD
=======
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git
		
	/*	session.selectOne("member.idcheck",);
		session.selectList(arg0);
		session.insert(arg0);
		session.update(arg0);
		session.delete(arg0);*/

<<<<<<< HEAD
=======

		session.commit();

		session.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git
	    
		return "/login/confirmId.jsp";
	}
  

}
       