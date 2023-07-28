package getbag.shopping.domain.member.dto;

/**
 * JavaBean 규약에 따라 만든 재사용 가능한 컴포넌트
 * 계정 정보
 * @author 홍재헌
 *
 */
public class Member {
	
	private String id;
	private String passwd;
	private String name;
	private String birthday;
	private String regdate;
	
	public Member() {}

	public Member(String id, String passwd, String name, String birthday) {
		super();
		this.id = id;
		this.passwd = passwd;
		this.name = name;
		this.birthday = birthday;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	

	public String getbirthday() {
		return birthday;
	}

	public void setbirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", passwd=" + passwd + ", name=" + name + ", birthday=" + birthday + ", regdate=" + regdate
				+ "]";
	}

}













