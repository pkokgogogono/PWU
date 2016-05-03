package action.order;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import action.CommandAction;
import dao.OrderDao;
import vo.OrderVo;

public class OrderListAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("euc-kr");

		OrderDao Orderdao = OrderDao.getInstance();
		
		System.out.println("zzzzz");
		List<OrderDao> selectList=Orderdao.selectList();
				request.setAttribute("selectList",selectList);
		System.out.println(selectList);
		request.setAttribute("count", 1);
		if(selectList == null){
			request.setAttribute("count", 0);
		}
		
		
	     
	       
	       return "/order/orderList.jsp";
	}


}
