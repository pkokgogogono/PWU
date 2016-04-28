package BH;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.CommandAction;
import dao.NoticeDao;
import vo.BH.Customer;


public class Notice_ContentAction implements CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		NoticeDao noticedao = NoticeDao.getInstance();
		
		String num = request.getParameter("num");
			
		request.setAttribute("noticedao",noticedao.selectOne(num));
		
		
		
	

	
	return "/customer_center/notice/notice_content.jsp";
	}

}
