package buytrip.mvc.model.travel.dao;

public interface TravelDAO {
	
	/**
	 * addTrip ���� ���� �����Ͽ� �������� ���ã�� �߰��ϱ� (�˸����:�޼���,�������ǻ���ǰ)
	 */
	public void signup();
	
	/**
	 * [mypage] ����� �������� �����ϱ�
	 */
	public void login();
	
	/**
	 * [mypage] ����� �������� �� ���Ѹ���� list ����
	 */
	public void logout();


}
