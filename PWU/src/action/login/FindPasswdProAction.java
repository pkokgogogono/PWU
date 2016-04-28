package action.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import dao.login.LoginDao;
import vo.MemberVo;

public class FindPasswdProAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		MemberVo membervo = new MemberVo();
		membervo.setId(request.getParameter("id"));
		membervo.setEmail(request.getParameter("email"));
		
		LoginDao logindao = LoginDao.getInstance();
		
		request.setAttribute("passwd", logindao.findPasswd(membervo));
		
		
		return "/login/findPasswdPro.jsp";
	}
}
