package action;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.CommandAction;
import dao.LoginDao;
import dao.OrderDao;
import vo.MemberVo;
import vo.OrderVo;
public class OrderListAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session2=request.getSession(true);
		OrderDao Orderdao = OrderDao.getInstance();
		
		List<OrderDao> selectList = Orderdao.selectList();
		   System.out.println(Orderdao.selectList());
		request.setAttribute("selectList",selectList);
		request.setAttribute("count", 1);
		if(selectList.isEmpty()){
			request.setAttribute("count", 0);
		}
		
		
	     
	       
	       return "/order/orderList.jsp";
	}


}
