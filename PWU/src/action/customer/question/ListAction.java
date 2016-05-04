package action.customer.question;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import dao.QuestionDao;
import vo.CustomerVo;
import vo.QuestionVo;

public class ListAction implements CommandAction {
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable{
		

		
		
		
			QuestionDao questiondao = QuestionDao.getInstance();

			List<QuestionVo> selectList = questiondao.selectList();
			request.setAttribute("selectList",selectList);
			request.setAttribute("count", 1);
			if(selectList == null){
				request.setAttribute("count", 0);
			}
			

		return"/customer_center/question/question_list.jsp";//ÇØ´çºä

	}
}

