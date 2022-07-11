package vo;

public class Sale {
	private int custno;
	private String custname;
	private String grade;
	private int sum;
	
	public Sale() {
		// TODO Auto-generated constructor stub
	}

	public Sale(int custno, String custname, String grade, int sum) {
		super();
		this.custno = custno;
		this.custname = custname;
		this.grade = grade;
		this.sum = sum;
	}

	public int getCustno() {
		return custno;
	}

	public void setCustno(int custno) {
		this.custno = custno;
	}

	public String getCustname() {
		return custname;
	}

	public void setCustname(String custname) {
		this.custname = custname;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}
	
	
}
