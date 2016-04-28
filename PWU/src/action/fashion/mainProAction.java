package action.fashion;

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

public class mainProAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");

		FashionDao fashionDao= FashionDao.getInstance();
		
		fashionBoardVo vo = new fashionBoardVo(request.getParameter("title"),
				request.getParameter("p_name"),
				Integer.parseInt(request.getParameter("p_price")),
				request.getParameter("content"));
		
		
		fashionDao.fashionInsert(vo);
		
		return "/fashion/admin/productwritePro.jsp";
	}

  
}
