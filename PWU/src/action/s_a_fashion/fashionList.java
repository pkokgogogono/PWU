package action.s_a_fashion;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import dao.FashionDao;
import vo.fashionBoardVo;

public class fashionList implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");

		FashionDao fashiondao= FashionDao.getInstance();
		
		List<fashionBoardVo> selectList = fashiondao.selectList();
		List<fashionBoardVo> selectListread = fashiondao.selectListRead();
		
		request.setAttribute("selectList",selectList);
		request.setAttribute("selectListread",selectListread);
		
		request.setAttribute("count", 1);
		if(selectList.isEmpty()){
			request.setAttribute("count", 0);
		}

		return "/fashion/user/fashionList.jsp";
	}

  
}

