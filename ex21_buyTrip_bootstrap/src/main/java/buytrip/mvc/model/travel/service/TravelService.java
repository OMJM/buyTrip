package buytrip.mvc.model.travel.service;

import java.util.List;

import buytrip.mvc.model.dto.TravelDTO;

public interface TravelService {
	
	
	/**
	 * addTrip 폼에 정보 기입하여 여행일정 즐겨찾기 추가하기 (알림기능:메세지,여행지의새상품)
	 */
	int insert (TravelDTO travelDTO);
	
	
	/**
	 * [mypage] 등록한 여행일정 삭제하기
	 */
	int delete(String travelNo);
	
	/**
	 * [mypage] 등록한 여행일정 중 전체 list 보기
	 */
	List<TravelDTO> selectAll();
	
	/**
	 * [mypage] 등록한 여행일정 중 기한만료된 list 보기
	 */
	List<TravelDTO> selectPast();
	
	/**
	 * 여행지 단어 자동완성
	 */
	List<String> suggest(String word);


}
