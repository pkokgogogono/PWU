package action;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import board.BoardDataBean;
import vo.OrderVo;


public class ContentAction implements CommandAction {//글내용 처리

	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("euc-kr");
		String res = "config.xml";
	
		InputStream is;
	
		try {
			is = Resources.getResourceAsStream(res);
		

		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = factory.openSession();
 
        //해당 뷰에서 사용할 속성
//		OrderVo vo = new OrderVo(request.getParameter("name"), request.getParameter("email")
//				, request.getParameter("address"), request.getParameter("zipcode"), request.getParameter("p_name")
//				);
		
		session.insert("order.insert",vo);
		
		session.commit();

		session.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       
        return "/order/content.jsp";//해당 뷰
    }
}