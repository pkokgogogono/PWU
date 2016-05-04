package action.m_fashion;

import java.io.IOException;
import java.io.InputStream;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.CommandAction;
import dao.FashionDao;
import dao.ReviewDao;
import vo.fashionBoardVo;
 
public class reviewDetailAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");

		ReviewDao reviewDao= ReviewDao.getInstance();
		
		int re_num = Integer.parseInt(request.getParameter("re_num"));
	
		System.out.println("re_num");
		request.setAttribute("review",reviewDao.ReviewSelect(re_num));
	 
		return "/fashion/user/reviewDetail.jsp";
	}

  
}
