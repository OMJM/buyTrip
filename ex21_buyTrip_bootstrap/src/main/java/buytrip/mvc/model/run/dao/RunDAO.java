package buytrip.mvc.model.run.dao;

public interface RunDAO {

	/**
	 * [travel page] 최근 등록된 여행일정 보여주기
	 */
	public void recentAddTrips();
	
	/**
	 * [order page] 최근 직구자가 등록한 상품 보여주기 (정렬 : 최신순)
	 */
	public void recentOrders();
	
	/**
	 * [main page] 최근 완료된 주문 보여주기
	 */
	public void recentCompletedOrders();
	
	/**
	 * [main page] 거래성사율 Top3나라 보여주기(등록수 대비 거래완료수)
	 */
	public void highestDeal();
	
	/**
	 * 회원 강퇴시키기
	 */
	public void fire();
}
