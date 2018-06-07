package buytrip.mvc.model.run.service;

public interface RunService {

	/**
	 * [travel page] �ֱ� ��ϵ� �������� �����ֱ�
	 */
	public void recentAddTrips();
	
	/**
	 * [order page] �ֱ� �����ڰ� ����� ��ǰ �����ֱ� (���� : �ֽż�)
	 */
	public void recentOrders();
	
	/**
	 * [main page] �ֱ� �Ϸ�� �ֹ� �����ֱ�
	 */
	public void recentCompletedOrders();
	
	/**
	 * [main page] �ŷ������� Top3���� �����ֱ�(��ϼ� ��� �ŷ��Ϸ��)
	 */
	public void highestDeal();
	
	/**
	 * ȸ�� �����Ű��
	 */
	public void fire();
	
}
