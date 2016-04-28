package BH;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import dao.NoticeDao;
import vo.BH.Customer;

public class Notice_ListAction implements CommandAction {
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable{
		
			NoticeDao noticedao = NoticeDao.getInstance();

			List<Customer> selectList = noticedao.selectList();
			request.setAttribute("selectList",selectList);
			request.setAttribute("count", 1);
			if(selectList.isEmpty()){
				request.setAttribute("count", 0);
			}
			

		return"/customer_center/notice/notice_list.jsp";//ÇØ´çºä

	}
}

