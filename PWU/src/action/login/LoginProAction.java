package action.login;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import dao.login.LoginDao;
import vo.MemberVo;


import action.CommandAction;

public class LoginProAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session=request.getSession(true);
		LoginDao logindao = LoginDao.getInstance();
		
		
		if(logindao.idCheck(request.getParameter("id"))!=null)
		{
			session.setAttribute("check",0);
			MemberVo vo = new MemberVo(request.getParameter("id"),request.getParameter("passwd"));
			if((logindao.loginCheck(vo))==1)
			{
				session.setAttribute("memId",request.getParameter("id"));
				if(logindao.adminCheck(vo)==1)
				{
					session.setAttribute("admin", "f");
				}
				else
				{
					session.setAttribute("admin", "t");
				}
				return "/login/index.jsp";
			}
		}
		else{
			session.setAttribute("check",1);
		}
		
		return "/login/loginPro.jsp";
		
	}

  
}