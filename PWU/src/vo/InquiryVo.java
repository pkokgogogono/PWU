package vo;

import java.sql.Timestamp;
import java.util.Date;

public class InquiryVo {

	private int num;
	private String writer;
	private String passwd;
	private String title;
	private Timestamp reg_date;
	private String content;
	private int read_count;
	private String email;
	private int level;
	
public InquiryVo(){}

	public InquiryVo(String title, String writer, String content, String passwd){
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.passwd = passwd;
	}
	
	
	
	public InquiryVo(int num, String writer, String passwd, String title, Timestamp reg_date, String content, int read_count, String email, int level){
	
		this.num = num;
		this.writer = writer;
		this.passwd = passwd;
		this.title = title;
		this.reg_date = reg_date;
		this.content = content;
		this.read_count = read_count;
		this.email = email;
		this.level = level;
	}
		
		
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getRead_count() {
		return read_count;
	}
	public void setRead_count(int read_count) {
		this.read_count = read_count;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
}
