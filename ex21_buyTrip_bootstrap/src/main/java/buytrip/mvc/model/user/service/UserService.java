package buytrip.mvc.model.user.service;

import buytrip.mvc.model.user.dto.UserDTO;

public interface UserService {

	/**
	 * ȸ�������ϱ�
	 */
	public int signup(UserDTO userDTO);
	
	/**
	 * �α����ϱ�
	 */
	public void login();
	
	/**
	 * ��й�ȣ �缳���ϱ�
	 */
	public void updatePassword();
	
	/**
	 * ������ ����
	 */
	public void selectProfile();
	
	/**
	 * ������ �����ϱ�
	 */
	public void updateProfile();
	
	/**
	 * ȸ�� Ż���ϱ�
	 */
	public void withdraw();	
	
}
