package action.order;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import dao.OrderDao;

public class UpdateFormAction implements CommandAction	{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		request.setCharacterEncoding("euc-kr");
		
		OrderDao orderdao = OrderDao.getInstance();
		
		String num = request.getParameter("num");
		
		request.setAttribute("Inquiry",orderdao.inquirySelect(num));
		
		return "/order/updateForm.jsp";
	}
}
