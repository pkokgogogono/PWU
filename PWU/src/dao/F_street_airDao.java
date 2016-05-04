package dao;
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
import vo.fashionBoardVo;
import vo.loveVo;

public class F_street_airDao {

	private static F_street_airDao instance = new F_street_airDao();
	   
    public static F_street_airDao getInstance() {
        return instance;
    }
   
    private F_street_airDao() {}

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
	
	public void fashionInsert(fashionBoardVo vo){

		try {		
			SqlSession session = getFactory().openSession();
			session.insert("f_air_street.insert", vo);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public List<fashionBoardVo> selectList(){
		List<fashionBoardVo> selectList = null;
		try {		
			SqlSession session = getFactory().openSession();
			selectList = session.selectList("f_air_street.selectList");
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return selectList;
	}
	
	public List<fashionBoardVo> selectListRead(){
		List<fashionBoardVo> selectList = null;
		try {		
			SqlSession session = getFactory().openSession();
			selectList = session.selectList("f_air_street.selectListRead");
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return selectList;
	}
	
	public void fashionDelete(String num){

		try {		
			SqlSession session = getFactory().openSession();
			session.delete("f_air_street.delete",num);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public fashionBoardVo fashionSelect(int num){
		fashionBoardVo vo = null;
		try {		
	
			SqlSession session = getFactory().openSession();
			vo=session.selectOne("f_air_street.select",num);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public void fashionUpdate(fashionBoardVo vo){
		
		try {		
			SqlSession session = getFactory().openSession();
			session.update("f_air_street.update",vo);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	public void readUpdate(int num){
		
		try {		
			SqlSession session = getFactory().openSession();
			session.update("f_air_street.readUpdate",num);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
	
	