package buytrip.mvc.model.deal.service;

public interface DealService {

	/**
	 * �����ڿ��� ���� �����ϱ� (�����ڿ��� �˸�, �ڵ� �޼��� �߼�)
	 */
	public void offerDeal();
	
	/**
	 * �޽��� list ����
	 */
	public void messages();
	
	/**
	 * �޽��� �󼼺���
	 */
	public void messageDetail();
	
	/**
	 * �޽��� - ��ȭ�ϱ�
	 */
	public void sendMessage();
	
	/**
	 * �˸� list ����
	 */
	public void notifications();
	
	/**
	 * �˸� �� �ش������� �̵��ϱ�
	 */
	public void readNotifications();
	
}
