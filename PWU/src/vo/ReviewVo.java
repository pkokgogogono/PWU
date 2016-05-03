package vo;

public class ReviewVo {
	private int num;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	private int re_num;
	private String writer;
	private String content;
	private String passwd;
	private String path;
	
	public ReviewVo() {
		// TODO Auto-generated constructor stub
	}
	public ReviewVo(int num, String writer, String content, String passwd, String path) {
		this.num = num;
		this.writer = writer;
		this.content = content;
		this.passwd = passwd;
		this.path = path;
	}
	public int getRe_num() {
		return re_num;
	}
	public void setRe_num(int re_num) {
		this.re_num = re_num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	
}
