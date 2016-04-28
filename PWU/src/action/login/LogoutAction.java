package action.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import action.login.CommandAction;


public class LogoutAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		HttpSession session=request.getSession(true);
		session.invalidate();
		return "/login/index.jsp";
	}
  

}
