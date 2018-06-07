package buytrip.mvc.model.travel.dao;

public interface TravelDAO {
	
	/**
	 * addTrip 폼에 정보 기입하여 여행일정 즐겨찾기 추가하기 (알림기능:메세지,여행지의새상품)
	 */
	public void signup();
	
	/**
	 * [mypage] 등록한 여행일정 삭제하기
	 */
	public void login();
	
	/**
	 * [mypage] 등록한 여행일정 중 기한만료된 list 보기
	 */
	public void logout();


}
