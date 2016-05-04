 package action.customer.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import action.CommandAction;
import dao.NoticeDao;
import vo.CustomerVo;

public class Notice_Delete implements CommandAction {
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable{
		
			NoticeDao noticedao = NoticeDao.getInstance();
			
			String num = request.getParameter("num");
			//NoticeDao ���� noticedelete �޼��� ã�Ƽ� ����
			noticedao.noticedelete(num);

			

		return"/customer_center/notice/notice_list.do";//�ش��

	}
}

