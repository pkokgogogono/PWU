package BH;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Notice_ListAction {
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable{
		request.setCharacterEncoding("euc-kr");
		String res = "config.xml";
		int check = 0;
	
		InputStream is;
		try {
			is = Resources.getResourceAsStream(res);
		

		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = factory.openSession();
		
		try

  

		//������ ���� view���� return [jsp����], WEB-CONTENT ���� ��κ��� �����ϸ� �ȴ�
		return"/cutomer_center/notice/notice_list.jsp";//�ش��
		}
	}
}

