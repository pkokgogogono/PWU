package BH;

import java.sql.*;
import java.util.*;

//BoardDBBean bd = BoardDBBean.getInstance()
public class CommunityDBBean {   
    private static CommunityDBBean instance = new CommunityDBBean();
   
    public static CommunityDBBean getInstance() {
        return instance;
    }
   
    private CommunityDBBean() {
    }
   
    private Connection getConnection() throws Exception {
	String jdbcDriver = "jdbc:apache:commons:dbcp:/pool";         
        return DriverManager.getConnection(jdbcDriver);
    }
    //writePro.jsp
    public void insertArticle(CommunityDataBean article) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        //�亯������ �Ϲݱ������� �����ؼ� �Է½����ִ� ����!!!
	int num=article.getNum();
	int level=article.getlevel();
	int number=0;
        String sql="";

        try {
            conn = getConnection();

            pstmt = conn.prepareStatement("select max(num) from board");
	    rs = pstmt.executeQuery();

	    if (rs.next())
	      number=rs.getInt(1)+1;
	    else
	      number=1;
  
            // ������ �ۼ�
            sql = "insert into board(num,writer,email,subject,passwd,reg_date,";
	    sql+="ref,re_step,re_level,content,ip) values(board_num.NEXTVAL,?,?,?,?,?,?,?,?,?,?)";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, article.getWriter());
	    pstmt.setTimestamp(2, article.getReg_date());
	    pstmt.setString(3, article.getContent());

            pstmt.executeUpdate();
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
	    if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
   
    //list.jsp : ����¡�� ���ؼ� ��ü DB�� �Էµ� ���Ǽ��� �ʿ��ϴ�...!!!
    public int getArticleCount() throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        int x=0;

        try {
            conn = getConnection();
           
            pstmt = conn.prepareStatement("select count(*) from board");
            rs = pstmt.executeQuery();

            if (rs.next()) {
               x= rs.getInt(1);
	    }
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
	return x;
    }

    //list.jsp ==> Paging!!! DB�κ��� �������� ����� �޴´�.
    //�� ��� ����
    public List getArticles(int start, int end) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List articleList=null;
        try {
            conn = getConnection();
           
            pstmt = conn.prepareStatement(
            "select num,writer,title,reg_date,content,read_count, level ,r  " +
            "from (select  num,writer,title,reg_date,content,read_count, level,rownum r " +
            "from (select num,writer,title,reg_date,re_level,content,read_count " +
            "from board order by ref desc, re_step asc) order by ref desc, re_step asc ) where r >= ? and r <= ? ");
            pstmt.setInt(1, start);
	    pstmt.setInt(2, end);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                articleList = new ArrayList(end);
                do{
                  CommunityDataBean article= new CommunityDataBean();
                  article.setNum(rs.getInt("num"));
                  article.setWriter(rs.getString("writer"));
                  article.setTitle(rs.getString("title"));
                  article.setContent(rs.getString("content"));
                  article.setReg_date(rs.getTimestamp("reg_date"));
                  article.setRead_count(rs.getInt("read_count"));
                  article.setlevel(rs.getInt("level"));
                  article.setContent(rs.getString("content"));
                  articleList.add(article);
		}while(rs.next());
	    }
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
	return articleList;
    }

    //read.jsp : DB�κ��� ������ �����͸� �����´�.
    public CommunityDataBean getArticle(int num) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        CommunityDataBean article=null;
        try {
            conn = getConnection();

            pstmt = conn.prepareStatement(
            "update board set readcount=readcount+1 where num = ?");
            pstmt.setInt(1, num);
	    pstmt.executeUpdate();

            pstmt = conn.prepareStatement(
            "select * from board where num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                article = new CommunityDataBean();
                article.setNum(rs.getInt("num"));
                article.setWriter(rs.getString("writer"));
                article.setTitle(rs.getString("title"));
                article.setContent(rs.getString("content"));
                article.setReg_date(rs.getTimestamp("reg_date"));
                article.setRead_count(rs.getInt("read_count"));
                article.setlevel(rs.getInt("level"));
	    }
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
	return article;
    }

    //updateForm.jsp : �������� ������ �����͸� �����ö�.
    public CommunityDataBean updateGetArticle(int num) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        CommunityDataBean article=null;
        try {
            conn = getConnection();

            pstmt = conn.prepareStatement(
            "select * from board where num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                article = new CommunityDataBean();
                article.setNum(rs.getInt("num"));
                article.setWriter(rs.getString("writer"));
                article.setTitle(rs.getString("title"));
                article.setContent(rs.getString("content"));
                article.setReg_date(rs.getTimestamp("reg_date"));
                article.setRead_count(rs.getInt("read_count"));
                article.setlevel(rs.getInt("level"));
	    }
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
	return article;
    }

    //updatePro.jsp : ���� �����͸� �����ϴ� �޼ҵ�.
    public int updateArticle(CommunityDataBean article) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs= null;

        String sql="";
        int x=-1;
        try {
            conn = getConnection();
           
            pstmt = conn.prepareStatement("select passwd from board where num = ?");
            pstmt.setInt(1, article.getNum());
            rs = pstmt.executeQuery();
           
	if(rs.next()){
	    dbpasswd= rs.getString("passwd");
	    if(dbpasswd.equals(article.getPasswd())){
		sql="update board set writer=?,email=?,subject=?,passwd=?";
		sql+=",content=? where num=?";
                pstmt = conn.prepareStatement(sql);

                pstmt.setString(1, article.getWriter());
                pstmt.setString(2, article.getEmail());
                pstmt.setString(3, article.getSubject());
                pstmt.setString(4, article.getPasswd());
                pstmt.setString(5, article.getContent());
		pstmt.setInt(6, article.getNum());
                pstmt.executeUpdate();
		x= 1;
	    }else{
		x= 0;
	    }
	  }
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
	    if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
	 return x;
    }
   
    //deletePro.jsp : ���� �����͸� �����ϴ� �޼ҵ�...
    public int deleteArticle(int num, String passwd) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs= null;
        String dbpasswd="";
        int x=-1;
        try {
	    conn = getConnection();

            pstmt = conn.prepareStatement(
            "select passwd from board where num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();
           
            if(rs.next()){
		dbpasswd= rs.getString("passwd");
		if(dbpasswd.equals(passwd)){
		    pstmt = conn.prepareStatement("delete from board where num=?");
                    pstmt.setInt(1, num);
                    pstmt.executeUpdate();
		    x= 1; //�ۻ��� ����
		}else
		    x= 0; //��й�ȣ Ʋ��
	    }
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
	return x;
    }
}