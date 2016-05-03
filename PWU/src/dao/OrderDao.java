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

import vo.InquiryVo;
import vo.OrderVo;


public class OrderDao {

	private static OrderDao instance = new OrderDao();
	   
    public static OrderDao getInstance() {
        return instance;
    }
   
    private OrderDao() {}

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
	
	public List<OrderDao> selectList(){
		List<OrderDao> selectList = null;
		try {		
			SqlSession session = getFactory().openSession();
			selectList = session.selectList("order.selectList");
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return selectList;
	}
	
	
	public void insert(OrderVo vo){
		try {		
			SqlSession session = getFactory().openSession();
			
			session.insert("order.insert",vo);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		
	}
	
	public List<OrderVo> inquiryselectList(){
		List<OrderVo> inquiryselectList = null;
		try {		
			SqlSession session = getFactory().openSession();
			inquiryselectList = session.selectList("order.inquiryselectList");
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return inquiryselectList;
	}
	
	
	public void inquiryInsert(InquiryVo vo){
		try {		
			SqlSession session = getFactory().openSession();
			
			session.insert("order.inquiryInsert",vo);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
		
		
	public InquiryVo selectOne(String num){
			InquiryVo vo = null;
			try {		
				SqlSession session = getFactory().openSession();
				//num이니까 integer형으로 변환후에

				//삭제 
				vo=session.selectOne("order.selectOne",num);
				session.commit();
				session.close();
			} catch (Exception e) {
				e.printStackTrace();
	}
			return vo;		
	}

	public InquiryVo deleteOne(String num){
		InquiryVo vo = null;
		try {		
			SqlSession session = getFactory().openSession();
			
		
			vo=session.selectOne("order.deleteOne",num);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
}
		return vo;
}
	
	
	public int delete(String passwd,String num){
		String dbpasswd = null;
		
		int x = -1;
		try {
			SqlSession session = getFactory().openSession();
			dbpasswd = session.selectOne("order.passwdget",num);
			
			if(dbpasswd==passwd){
				session.selectOne("order.delete",num);
				
				x=1;
			}else{
				x=0;
			}
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
}
		return x;
}
	
	
	public InquiryVo inquirySelect(String num){
		InquiryVo vo = null;
		try {		
			SqlSession session = getFactory().openSession();
			
		
			vo=session.selectOne("order.select",num);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
}
		return vo;
}
	
	public void inquiryUpdate(InquiryVo vo){
		
		try {		
			SqlSession session = getFactory().openSession();
			
		
			session.update("order.update",vo);
			
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
}
		
}
}