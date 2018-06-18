package buytrip.mvc.model.deal.service;

import java.util.List;

import org.springframework.stereotype.Service;

import buytrip.mvc.model.dto.OfferDTO;
import buytrip.mvc.model.dto.OfferJoinProductDTO;

@Service
public interface DealService {

	/**
	 * 직구자에게 구매 제안하기 (직구자에게 알림, 자동 메세지 발송)
	 */
	public void offerDeal(OfferDTO offer);
	
	/**
	 * 직구자에게 제안했던 배달 신청 취소하기
	 */
	public void deleteDeal(String offerCode);
	
	/**
	 * 마이페이지-내 배달 목록에서 배달 신청 목록 읽어오기
	 */
	public List<OfferJoinProductDTO> readDeals(String offerId);
	
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
