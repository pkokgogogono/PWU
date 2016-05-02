package action.mypage;

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
import mypage.dao.mypageDao;
import vo.MemberVo;
import vo.mypage.*;

public class deleteProAction implements CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session2=request.getSession(true);
		mypageDao dao = mypageDao.getInstance();

		/*dao.passwdCheck((String)session2.getAttribute("memId"));*/
		
		mypageVo vo = new mypageVo((String)session2.getAttribute("memId"),
					request.getParameter("passwd"));

		int check = dao.delMember(vo.getId(),vo.getPasswd());
		
		session2.setAttribute("check", check);
		
		 return "/mypage/deletePro.jsp";
	
  

	}
}
       