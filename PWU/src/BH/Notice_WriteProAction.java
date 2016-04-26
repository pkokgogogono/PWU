package BH;

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
import vo.BH.Customer;

public class Notice_WriteProAction implements CommandAction{
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");
		String res = "config.xml";
	
		InputStream is;
		try {
			is = Resources.getResourceAsStream(res);
		      
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = factory.openSession();
	  
		Customer vo = new Customer(Integer.parseInt(request.getParameter("num")), request.getParameter("writer"), request.getParameter("title"), request.getParameter("content")
			,new Timestamp(System.currentTimeMillis()), Integer.parseInt(request.getParameter("read_count")),1);

		int n = session.insert("notice.insert", vo);

		session.commit();

	session.close();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return "/cutomer_center/notice/notice_write.jsp";
}


}



