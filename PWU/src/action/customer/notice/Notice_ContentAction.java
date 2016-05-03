package action.customer.notice;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.CommandAction;
import dao.NoticeDao;
import vo.CustomerVo;


public class Notice_ContentAction implements CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
	String res = "config.xml";


		


		NoticeDao noticedao = NoticeDao.getInstance();
		
		String num = request.getParameter("num");
			
		request.setAttribute("noticedao",noticedao.selectOne(num));

		
		
	/*	
		request.setCharacterEncoding("euc-kr");
		String res = "config.xml";
	
		InputStream is;
		try {
			is = Resources.getResourceAsStream(res);
		

		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = factory.openSession();
		}catch(Exception e){}
		return "/cutomer_center/notice/notice_list.jsp";
	*/

	
	return "/customer_center/notice/notice_content.jsp";
	}

}
