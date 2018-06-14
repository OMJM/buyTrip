package buytrip.mvc.model.dto;

public class UserDTO {
	private String memberId;
	private String memberName;
	private String memberPassword;
	private String mobile;
	public UserDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserDTO(String memberId, String memberName, String memberPassword, String mobile) {
		super();
		this.memberId = memberId;
		this.memberName = memberName;
		this.memberPassword = memberPassword;
		this.mobile = mobile;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getmemberName() {
		return memberName;
	}
	public void setmemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getmemberPassword() {
		return memberPassword;
	}
	public void setmemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	@Override
	public String toString() {
		return "UserDTO [memberId=" + memberId + ", memberName=" + memberName + ", memberPassword=" + memberPassword + ", mobile=" + mobile + "]";
	}
	
	

}