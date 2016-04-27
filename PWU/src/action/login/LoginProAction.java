package action.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.mypage.CommandAction;
public class LoginProAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("euc-kr");

//		LogonDBBean dbPro = LogonDBBean.getInstance();// DBÃ³¸®
//		int check =  dbPro.userCheck(request.getParameter("id"), request.getParameter("passwd"));
//		
//		request.setAttribute("check", check);
//		if(check==1){
//			HttpSession session=request.getSession(true);
//			session.setAttribute("memId",request.getParameter("id"));
//			return "main.do";
//		}
		
		return "/login/loginPro.jsp";
		
	}

  
}