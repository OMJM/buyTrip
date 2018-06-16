package buytrip.mvc.model.deal.service;

import org.springframework.stereotype.Service;

import buytrip.mvc.model.dto.OfferDTO;

@Service
public interface DealService {

	/**
	 * �����ڿ��� ���� �����ϱ� (�����ڿ��� �˸�, �ڵ� �޼��� �߼�)
	 */
	public void offerDeal(OfferDTO offer);
	
	/**
	 * �����ڿ��� �����ߴ� ��� ��û ����ϱ�
	 */
	public void deleteDeal();
	
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
