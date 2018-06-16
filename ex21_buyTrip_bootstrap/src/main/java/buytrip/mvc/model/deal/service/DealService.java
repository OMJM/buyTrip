package buytrip.mvc.model.deal.service;

import org.springframework.stereotype.Service;

import buytrip.mvc.model.dto.OfferDTO;

@Service
public interface DealService {

	/**
	 * 직구자에게 구매 제안하기 (직구자에게 알림, 자동 메세지 발송)
	 */
	public void offerDeal(OfferDTO offer);
	
	/**
	 * 직구자에게 제안했던 배달 신청 취소하기
	 */
	public void deleteDeal();
	
	/**
	 * 메시지 list 보기
	 */
	public void messages();
	
	/**
	 * 메시지 상세보기
	 */
	public void messageDetail();
	
	/**
	 * 메시지 - 대화하기
	 */
	public void sendMessage();
	
	/**
	 * 알림 list 보기
	 */
	public void notifications();
	
	/**
	 * 알림 별 해당페이지 이동하기
	 */
	public void readNotifications();
	
}
