package action.order;

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
import dao.OrderDao;
import vo.InquiryVo;


public class InquiryContentAction implements CommandAction {//글내용 처리

	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("euc-kr");
	

		OrderDao select = OrderDao.getInstance();
		

		request.setAttribute("select",select.selectOne(request.getParameter("num")));
		
		
       
        return "/order/InquiryContent.jsp";//해당 뷰
    }
}