package member;

public class Member {
	private String id;
	private String pw;
	private String name;
	private boolean gender;
	public Member(String id, String pw, String name, boolean gender) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", pw=" + pw + ", name=" + name + ", gender=" + gender + "]";
	}
	

}
