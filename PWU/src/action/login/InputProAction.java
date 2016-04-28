package action.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.mypage.CommandAction;
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git
import vo.MemberVo;
<<<<<<< HEAD
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git
import action.CommandAction;
<<<<<<< HEAD
import vo.MemberVo;
import dao.login.LoginDao;
=======
import dao.login.LoginDao;
=======
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git


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
