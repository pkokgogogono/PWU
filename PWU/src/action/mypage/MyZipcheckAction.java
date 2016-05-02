package action.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import action.CommandAction;
import mypage.dao.mypageDao;
import vo.mypage.ZipcodemyVo;



public class MyZipcheckAction implements CommandAction {

	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("euc-kr");
		
		mypageDao dao = mypageDao.getInstance();
		
		if (request.getParameter("area4") != null) {
			
				List<ZipcodemyVo> zipcodeList = dao.zipCheck1(request.getParameter("area4"));

				if(zipcodeList.isEmpty())
				{
					request.setAttribute("zipcodeList", null);
				}else{
				request.setAttribute("zipcodeList", zipcodeList);
				}
		}
		else{
			request.setAttribute("zipcodeList", null);
		}

		return "/mypage/MyZipCheck.jsp";
	}

}