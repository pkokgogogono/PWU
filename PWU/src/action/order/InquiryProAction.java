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
import vo.InquiryVo;
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
							
	    OrderDao dao = OrderDao.getInstance();

		
	
		
		
		
	    InquiryVo vo = new InquiryVo(request.getParameter("title"),
	    		request.getParameter("writer"), request.getParameter("content"),
				request.getParameter("passwd")); 
				 
		
		
		dao.inquiryInsert(vo);
		
		
		session.commit();

		session.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "/order/InquiryPro.jsp";
		
	

		}
}
