package action.order;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import dao.OrderDao;
import vo.InquiryVo;

public class UpdateProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		
		OrderDao orderdao= OrderDao.getInstance();
		
		InquiryVo vo = new InquiryVo(
				request.getParameter("title"),
				request.getParameter("writer"),
				request.getParameter("content"),
				request.getParameter("passwd"));
		
		orderdao.inquiryUpdate(vo);

        
		return "/order/updatePro.jsp";
	}
	
	
}
