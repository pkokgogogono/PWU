package action.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
<<<<<<< HEAD

=======
import dao.login.LoginDao;
import vo.MemberVo;
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git

public class FindIdAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
	
		return "/login/findIdForm.jsp";
	}
}
