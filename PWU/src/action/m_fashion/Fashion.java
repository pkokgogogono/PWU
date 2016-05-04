package action.m_fashion;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import vo.fashionBoardVo;
import dao.FashionDao;

public class Fashion implements CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");

		return "/fashion/user/fashion.jsp";
	} 

  
}

