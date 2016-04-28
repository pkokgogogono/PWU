 package BH;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import action.CommandAction;
import dao.NoticeDao;
import vo.BH.Customer;

public class Notice_Delete implements CommandAction {
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable{
		
			NoticeDao noticedao = NoticeDao.getInstance();
			
			String num = request.getParameter("num");
			//NoticeDao 에서 noticedelete 메서드 찾아서 실행
			noticedao.noticedelete(num);

			

		return"/customer_center/notice/notice_list.do";//해당뷰

	}
}

