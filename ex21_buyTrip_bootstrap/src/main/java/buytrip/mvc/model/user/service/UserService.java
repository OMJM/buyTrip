package buytrip.mvc.model.user.service;

public interface UserService {

	/**
	 * ȸ�������ϱ�
	 */
	public void signup();
	
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
