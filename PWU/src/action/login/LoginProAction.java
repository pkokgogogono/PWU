package action.login;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.CommandAction;
import dao.LoginDao;
import vo.MemberVo;
public class LoginProAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session2=request.getSession(true);
		LoginDao logindao = LoginDao.getInstance();
		
		
		if(logindao.idCheck(request.getParameter("id"))!=null)
		{
			session2.setAttribute("check",0);
			MemberVo vo = new MemberVo(request.getParameter("id"),request.getParameter("passwd"));
			if((logindao.loginCheck(vo))==1)
			{
				session2.setAttribute("memId",request.getParameter("id"));
				return "/login/index.jsp";
			}
		}
		else{
			session2.setAttribute("check",1);
		}
		
		return "/login/loginPro.jsp";
		
	}

  
}