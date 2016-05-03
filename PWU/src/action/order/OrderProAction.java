package action;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.CommandAction;
import vo.MemberVo;
import vo.OrderVo;

public class OrderProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("euc-kr");
		String res = "config.xml";
	
		InputStream is;
	
		try {
			is = Resources.getResourceAsStream(res);
		

		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = factory.openSession();
		
		System.out.println(Integer.parseInt(request.getParameter("num")));
		System.out.println(request.getParameter("subject"));
		System.out.println(request.getParameter("p_name"));
		System.out.println(Integer.parseInt(request.getParameter("p_price")));
		System.out.println(request.getParameter("e-mail"));
		System.out.println(request.getParameter("address"));
		System.out.println(request.getParameter("content"));
		
		
		OrderVo vo = new OrderVo(Integer.parseInt("num"),request.getParameter("subject"), request.getParameter("p_name"), Integer.parseInt("p_price"),  
				 request.getParameter("e-mail"), request.getParameter("address"), request.getParameter("content"));

		
		session.insert("order.insert",vo);
		
		session.commit();

		session.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "/order/orderPro.jsp";
		
	

		}
}
