package action.fashion;

import java.io.IOException;
import java.io.InputStream;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.login.CommandAction;
import dao.FashionDao;
import vo.fashionBoardVo;

public class productDetail implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");

		FashionDao fashionDao= FashionDao.getInstance();
		
		String num = request.getParameter("num");
		System.out.println(request.getParameter("num"));
		request.setAttribute("fashiondetail",fashionDao.fashionSelect(num));
		System.out.println(fashionDao.fashionSelect(num));
		return "/fashion/admin/productDetail.jsp";
	}

  
}
