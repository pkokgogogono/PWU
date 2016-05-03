package vo;

public class loveVo {
	private int f_d_num;
	
	private int f_m_num;

	private int f_sa_num;
	private String id;


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	public loveVo(String id, int f_d_num){
		this.id=id;
		this.f_d_num = f_d_num;
	}
	
	public loveVo(int f_d_num){
		this.f_d_num = f_d_num;
	}
	
	public int getF_d_num() {
		return f_d_num;
	}
	
	
	public void setF_d_num(int f_d_num) {
		this.f_d_num = f_d_num;
	}
	public int getF_m_num() {
		return f_m_num;
	}
	public void setF_m_num(int f_m_num) {
		this.f_m_num = f_m_num;
	}
	public int getF_sa_num() {
		return f_sa_num;
	}
	public void setF_sa_num(int f_sa_num) {
		this.f_sa_num = f_sa_num;
	}
	
	
}
