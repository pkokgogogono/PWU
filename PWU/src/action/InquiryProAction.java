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

import board.BoardDBBean;
import board.BoardDataBean;
import vo.MemberVo;
import vo.OrderVo;

public class InquiryProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("euc-kr");
		String res = "config.xml";
	
		InputStream is;
	
		try {
			is = Resources.getResourceAsStream(res);
		

		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = factory.openSession();
		

		
		OrderVo vo = new OrderVo(0, request.getParameter("name"), request.getParameter("email")
				, request.getParameter("address"), request.getParameter("zipcode"), request.getParameter("p_name"), null, res, 0, res
				);

		
	
		
		
		
		session.insert("order.insert",vo);
		
		session.commit();

		session.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "/order/InquiryPro.jsp";
		
	

		}
}
