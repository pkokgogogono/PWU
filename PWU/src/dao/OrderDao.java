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
import vo.BH.Customer;

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
			selectList = session.selectList("notice.selectList");
			System.out.println(selectList+"Âð");
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return selectList;
	}
}
