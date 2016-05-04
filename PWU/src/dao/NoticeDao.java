package dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.CustomerVo;
import vo.MemberVo;

public class NoticeDao {

	private static NoticeDao instance = new NoticeDao();
	   
    public static NoticeDao getInstance() {
        return instance;
    }
   
    
    private NoticeDao() {}
    
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
	public void NoticeInsert(CustomerVo vo){
		try {		
			SqlSession session = getFactory().openSession();
			session.insert("notice.insert", vo);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void update(CustomerVo vo){
		try {
			SqlSession session = getFactory().openSession();
			session.update("notice.update",vo);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public List<CustomerVo> selectList(){
		List<CustomerVo> selectList = null;
		try {		
			SqlSession session = getFactory().openSession();
			selectList = session.selectList("notice.selectList");
			//���ݱ��� db�� �۾��� ���� db�� �����Ͽ� ��
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return selectList;
	}
	

	public void noticedelete(String num){
		try {		
			SqlSession session = getFactory().openSession();
			//num�̴ϱ� integer������ ��ȯ�Ŀ�
			int number = Integer.parseInt(num);
			//���� 
			session.delete("notice.delete",number);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
		
		public CustomerVo selectOne(String num){
			CustomerVo vo = null;
			try {		
				System.out.println(num);
				SqlSession session = getFactory().openSession();
		
				//num�̴ϱ� integer������ ��ȯ�Ŀ�
				//���� 
				vo=session.selectOne("notice.selectOne",num);
				session.close();
			} catch (Exception e) {
				e.printStackTrace();
			}		
			return vo;
	}
		
		public List<CustomerVo> PagingSelect(){
			List<CustomerVo> PagingSelect = null;
			try {		
				SqlSession session = getFactory().openSession();
				PagingSelect = session.selectList("notice.PagingSelect");
				//���ݱ��� db�� �۾��� ���� db�� �����Ͽ� ��
				session.close();
			} catch (Exception e) {
				e.printStackTrace();
			}		
			return PagingSelect;
		}

		public List<CustomerVo> getArticles(int startNum, int endNum) {
			List<CustomerVo> PagingSelect = null;
			try {		
				SqlSession session = getFactory().openSession();
				Map<String,Integer> map = new HashMap<String,Integer>();
				map.put("s",startNum );
				map.put("e",endNum );
				
				PagingSelect = session.selectList("notice.addpaging1", map);
				//���ݱ��� db�� �۾��� ���� db�� �����Ͽ� ��
				session.close();
			} catch (Exception e) {
				e.printStackTrace();
			}		
			return PagingSelect;
		}
		
	
		
	
	

	
}

	
