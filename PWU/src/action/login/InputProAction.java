package action.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import vo.MemberVo;
import dao.login.LoginDao;



public class InputProAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");
		
		LoginDao logindao = LoginDao.getInstance();

		MemberVo vo = new MemberVo(request.getParameter("id"),request.getParameter("passwd"), request.getParameter("name"),
				request.getParameter("zipcode"),request.getParameter("address"),request.getParameter("email"),1);
		
		logindao.memberInsert(vo);

		return "/login/index.jsp";
	}

  
}
