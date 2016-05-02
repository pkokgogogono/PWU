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
import mypage.dao.mypageDao;
import vo.mypage.*;

public class modifyProAction implements CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session2=request.getSession(true);
		mypageDao dao = mypageDao.getInstance();
		
		
		mypageVo c = new mypageVo(request.getParameter("passwd"),request.getParameter("name"),
				request.getParameter("zipcode"),request.getParameter("address"),request.getParameter("email"));
		
        dao.updateInform(c);
	    
		return "/mypage/modifyPro.jsp";
	    
	}

  
}