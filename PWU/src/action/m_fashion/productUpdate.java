package action.m_fashion;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import dao.FashionDao;
import vo.fashionBoardVo;

public class productUpdate implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");

		FashionDao fashionDao= FashionDao.getInstance();
		 
		int num = Integer.parseInt(request.getParameter("num"));

	   
		request.setAttribute("fashiondetail",fashionDao.fashionSelect(num));
		
		return "/fashion/admin/productUpdate.jsp";
	}
}
