package action.order;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;

public class InquiryFormAction implements CommandAction {//�� �Է� �� ó��

	 public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable {
	       

			return "/order/InquiryForm.jsp";//�ش� ��
		}
	}