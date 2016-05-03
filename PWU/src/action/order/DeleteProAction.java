package action.order;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.CommandAction;
import dao.OrderDao;



public class DeleteProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session2=request.getSession(true);
		OrderDao orderdao = OrderDao.getInstance();
		
		String passwd = request.getParameter("passwd");
		String num = request.getParameter("num");
		int check = orderdao.delete(passwd, num);
		System.out.println(passwd);
        System.out.println(num);
		System.out.println(check);
		session2.setAttribute("check", check);
		
		return "/order/deletePro.jsp";
	}
	

}
