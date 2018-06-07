package buytrip.mvc.model.order.dao;

public interface OrderDAO {

	/**
	 * ��ǰ ����ϱ�
	 */
	public void insertOrder();
	
	/**
	 * [mypage] ����� ��ǰ lsit ����
	 */
	public void readOrder();
	
	/**
	 * [mypage] ����� ��ǰ �󼼺���
	 */
	public void readOrderDetail();
	
	/**
	 * [mypage] ����� ��ǰ �����ϱ�
	 */
	public void updateOrder();
	
	/**
	 * [mypage] ����� ��ǰ �����ϱ�
	 */
	public void deleteOrder();
	
	/**
	 * [mypage] ����� ��ǰ �ŷ��Ϸ� ó���ϱ�
	 */
	public void completeOrder();
	
	/**
	 * [mypage] ����� ��ǰ �� �ŷ��Ϸ�/���Ѹ���� ��ǰ list ����
	 */
	public void readCompletedOrder();

	/**
	 * ������ �˻��� ���� �������� ��ϻ�ǰ list ����
	 */
	public void searchTripOrders();
	
	/**
	 * �����ڰ� ����� ��ǰ �󼼺��� (1.��ǰ����, 2.����������, 3.�������� ��������)
	 */
	public void readUserOrder();
	
}
