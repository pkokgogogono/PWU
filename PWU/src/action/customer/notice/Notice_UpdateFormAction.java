package action.customer.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import dao.NoticeDao;
import vo.CustomerVo;



public class Notice_UpdateFormAction  implements CommandAction{
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
			
		NoticeDao noticedao = NoticeDao.getInstance();		
		String num = request.getParameter("num");
		System.out.println(num);
		
		request.setAttribute("noticedao",noticedao.selectOne(num));

		
		return "/customer_center/notice/notice_update.jsp";

}
}