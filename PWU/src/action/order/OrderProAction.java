package action.order;

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
import dao.OrderDao;
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
		/*
		
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("id"));
		System.out.println(request.getParameter("p_name"));
		System.out.println(Integer.parseInt(request.getParameter("p_price")));
		System.out.println(request.getParameter("email"));
		System.out.println(request.getParameter("zipcode"));
		System.out.println(request.getParameter("address"));
		System.out.println(request.getParameter("status"));
		*/
		OrderDao dao = OrderDao.getInstance();

		OrderVo vo = new OrderVo(request.getParameter("name"), 
				request.getParameter("id"),
				request.getParameter("p_name"), 
				Integer.parseInt(request.getParameter("p_price")),  
				 request.getParameter("email"),
				 request.getParameter("zipcode"),
				 request.getParameter("address"), 
				 request.getParameter("content"));


		 System.out.println(request.getParameter("name"));
		 System.out.println(request.getParameter("id"));
		 System.out.println(request.getParameter("p_name"));
		 System.out.println(Integer.parseInt(request.getParameter("p_price")));
		 System.out.println(request.getParameter("email"));
		 System.out.println(request.getParameter("zipcode"));
		 System.out.println(request.getParameter("address"));
		 System.out.println(request.getParameter("status"));
		
		
		dao.insert(vo);
	
		session.commit();

		session.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "/order/orderPro.jsp";
		
	

		}
}
