package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;

public class OrderFormAction implements CommandAction {//�� �Է� �� ó��

    public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable {
       

		return "/order/orderForm.jsp";//�ش� ��
	}
}