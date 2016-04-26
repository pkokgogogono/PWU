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
	
		Customer vo = new Customer(request.getParameter(num),request.getParameter(writer),request.getParameter(title),request.getParameter(reg_date)
				,request.getParameter(content));
		
		session.insert("notice.insert",vo);
		 
		request.setCharacterEncoding("utf-8");//한글 인코딩
		


		
		return "/cutomer_center/notice/notice_writepro.jsp";
		
		}
}



