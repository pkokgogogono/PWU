package vo;

import java.sql.Timestamp;

public class CustomerVo {

	public CustomerVo()
	{
		
	}
	
	
	public CustomerVo(String title, String content, String writer) {
		
		this.title = title;
		this.content = content;
		this.writer="관리자";
	}
	
	private int num;
	public CustomerVo(int num, String writer, String title, Timestamp reg_date, String content, int read_count, int lev) {
		this.num = num;
		this.writer = writer;
		this.title = title;
		this.reg_date = reg_date;
		this.content = content;
		this.read_count = read_count;
		this.lev = lev;
	}

	public CustomerVo(String title, String content) {
		this.title = title;
		this.content = content;
	}

	private String writer;
	private String title;
	private Timestamp reg_date;
	private String content;
	private int read_count;
	private int lev;
	
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public int getRead_count() {
		return read_count;
	}
	public void setRead_count(int read_count) {
		this.read_count = read_count;
	}

	public int getlev() {
		return lev;
	}
	public void setlev(int lev) {
		this.lev = lev;
	}

}
