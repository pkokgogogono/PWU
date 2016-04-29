package action.fashion;
 
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.login.CommandAction;
import dao.FashionDao;
import vo.fashionBoardVo;
import vo.BH.Customer;

public class UserList implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");

		FashionDao fashiondao= FashionDao.getInstance();
		
		List<fashionBoardVo> selectList = fashiondao.selectList();
		   System.out.println(selectList);
		request.setAttribute("selectList",selectList);
		request.setAttribute("count", 1);
		if(selectList.isEmpty()){
			request.setAttribute("count", 0);
		}

		return "/fashion/user/fashionUser.jsp";
	}

  
}

