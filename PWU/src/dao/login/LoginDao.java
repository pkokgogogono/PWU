package dao.login;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.MemberVo;
import vo.ZipcodeVo;

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
	
	public int adminCheck(MemberVo vo){
		int admincheck = 1;
		try {
			SqlSession session = getFactory().openSession();
			admincheck = session.selectOne("member.admincheck", vo);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return admincheck;
	}
	
	public void memberInsert(MemberVo vo){
		try {
			SqlSession session = getFactory().openSession();
			session.insert("member.insert", vo);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<ZipcodeVo> zipCheck(String area4){
		List<ZipcodeVo> zipcodeList = null;
		try {
			SqlSession session = getFactory().openSession();
			zipcodeList = session.selectList("member.zipcheck",area4);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return zipcodeList;
	}
	
	public List<MemberVo> findId(MemberVo vo){
		List<MemberVo> id = null;
		try {
			SqlSession session = getFactory().openSession();
			id = session.selectList("member.findid", vo);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}
	
	public String findPasswd(MemberVo vo){
		String passwd = null;
		try {
			SqlSession session = getFactory().openSession();
			passwd = session.selectOne("member.findpasswd", vo);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return passwd;
	}
}
	
	

