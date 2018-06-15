package buytrip.mvc.model.deal.dao;

import buytrip.mvc.model.deal.dto.OfferDTO;

public interface DealDAO {
	
	/**
	 * �����ڿ��� ���� �����ϱ� (�����ڿ��� �˸�, �ڵ� �޼��� �߼�)
	 */
	public int offerDeal(OfferDTO offer);
	
	/**
	 * �����ڿ��� �����ߴ� ��� ��û ����ϱ�
	 */
	public int deleteDeal();
	
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
