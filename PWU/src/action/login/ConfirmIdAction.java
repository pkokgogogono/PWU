package action.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import dao.login.LoginDao;




public class ConfirmIdAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");
		int check = 0;
 
		LoginDao logindao = LoginDao.getInstance();		

		if(logindao.idCheck(request.getParameter("id"))==null){	
			
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

	    
		return "/login/confirmId.jsp";
	}
  

}
       