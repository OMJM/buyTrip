package buytrip.mvc.model.deal.service;

import java.util.List;

import org.springframework.stereotype.Service;

import buytrip.mvc.model.dto.OfferDTO;
import buytrip.mvc.model.dto.OfferJoinProductDTO;

@Service
public interface DealService {

	/**
	 * �����ڿ��� ���� �����ϱ� (�����ڿ��� �˸�, �ڵ� �޼��� �߼�)
	 */
	public void offerDeal(OfferDTO offer);
	
	/**
	 * �����ڿ��� �����ߴ� ��� ��û ����ϱ�
	 */
	public void deleteDeal(String offerCode);
	
	/**
	 * ����������-�� ��� ��Ͽ��� ��� ��û ��� �о����
	 */
	public List<OfferJoinProductDTO> readDeals(String offerId);
	
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
