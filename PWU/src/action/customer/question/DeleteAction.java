 package action.customer.question;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import action.CommandAction;
import dao.NoticeDao;
import dao.QuestionDao;
import vo.CustomerVo;

public class DeleteAction implements CommandAction {
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable{
		
			QuestionDao quetiondao = QuestionDao.getInstance();
			
			String num = request.getParameter("num");
			//NoticeDao ���� noticedelete �޼��� ã�Ƽ� ����
			quetiondao.questiondelete(num);

			

		return"/customer_center/question/question_list.do";//�ش��

	}
}

