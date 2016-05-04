package action.s_a_fashion;

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
import vo.fashionBoardVo;

public class userDetail implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");

		FashionDao fashionDao= FashionDao.getInstance();
		
		int num = Integer.parseInt(request.getParameter("num"));

		fashionDao.readUpdate(num);
		
		request.setAttribute("fashiondetail",fashionDao.fashionSelect(num));

		request.setAttribute("num",request.getParameter("num"));
		
		return "/fashion/user/userDetail.jsp";
	}

  
}
