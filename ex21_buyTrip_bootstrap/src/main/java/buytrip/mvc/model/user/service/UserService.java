package buytrip.mvc.model.user.service;

import buytrip.mvc.model.dto.UserDTO;

public interface UserService {

	/**
	 * 회원가입하기
	 */
	public int signup(UserDTO userDTO);
	
	/**
	 * 로그인하기
	 */
	public UserDTO login(UserDTO uesrDTO);
	
	public UserDTO findMemberById(String id);
	
	/**
	 * 비밀번호 재설정하기
	 */
	public void updatePassword();
	
	public void updateMember(UserDTO userDTO);
	
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
	public int withdraw(String memberId, String memberPassword);
	
}
