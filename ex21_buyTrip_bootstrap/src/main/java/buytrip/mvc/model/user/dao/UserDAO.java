package buytrip.mvc.model.user.dao;

import buytrip.mvc.model.user.dto.UserDTO;

public interface UserDAO {
	
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
