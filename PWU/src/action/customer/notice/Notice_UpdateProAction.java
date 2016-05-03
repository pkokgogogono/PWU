package action.customer.notice;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.CustomerVo;
import action.CommandAction;
import dao.NoticeDao;

public class Notice_UpdateProAction implements CommandAction {

		@Override
		public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
			request.setCharacterEncoding("utf-8");
			
			NoticeDao noticedao = NoticeDao.getInstance();
		
			CustomerVo vo = new CustomerVo( request.getParameter("title"),
					request.getParameter("content"));
	  
			
			noticedao.update(vo);
			return "/customer_center/notice/notice_updatepro.jsp";
		}
		
		
	}


