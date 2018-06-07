package buytrip.mvc.model.user.dao;

public interface UserDAO {
	
	/**
	 * 회원가입하기
	 */
	public void signup();
	
	/**
	 * 로그인하기
	 */
	public void login();
	
	/**
	 * 비밀번호 재설정하기
	 */
	public void updatePassword();
	
	/**
	 * 프로필 보기
	 */
	public void selectProfile();
	
	/**
	 * 프로필 수정하기
	 */
	public void updateProfile();
	
	/**
	 * 회원 탈퇴하기
	 */
	public void withdraw();	
	
}
