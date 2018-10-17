package user.dto;

public class UserDTO {
	private String userid;
	private String passwd;
	private String name;
	private String gender;
	private String email;
	private String phone;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public UserDTO(String userid, String passwd, String name, String gender, String email, String phone) {
		super();
		this.userid = userid;
		this.passwd = passwd;
		this.name = name;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
	}
	public UserDTO() {
		
	}
	@Override
	public String toString() {
		return "UserDTO [userid=" + userid + ", passwd=" + passwd + ", name=" + name + ", gender=" + gender + ", email="
				+ email + ", phone=" + phone + "]";
	}
	
}
	
