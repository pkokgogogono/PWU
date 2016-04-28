package dao;

import java.io.IOException;
import java.io.InputStream;

<<<<<<< HEAD
=======
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.MemberVo;

public class LoginDao {

	private static LoginDao instance = new LoginDao();
	   
    public static LoginDao getInstance() {
        return instance;
    }
   
    private LoginDao() {}

	private static SqlSessionFactory getFactory() throws Exception{
		String res = "config.xml";
		InputStream is;
		SqlSessionFactory factory = null;
		SqlSession session = null;
		try {
			is = Resources.getResourceAsStream(res);

		factory = new SqlSessionFactoryBuilder().build(is);

		} catch (IOException e) {
			e.printStackTrace();
		}
		return factory;
	
	}
	public String idCheck(String id){
		String idcheck = null;
		try {		
			SqlSession session = getFactory().openSession();
			idcheck = session.selectOne("member.idcheck",id);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return idcheck;
	}
	
	public int loginCheck(MemberVo vo){
		int logincheck = 0;
		try {
			SqlSession session = getFactory().openSession();
			logincheck = session.selectOne("member.logincheck", vo);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return logincheck;
	}
} 
	
	

