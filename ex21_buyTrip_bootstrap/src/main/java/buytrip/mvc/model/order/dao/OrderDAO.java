package buytrip.mvc.model.order.dao;

public interface OrderDAO {

	/**
	 * 상품 등록하기
	 */
	public void insertOrder();
	
	/**
	 * [mypage] 등록한 상품 lsit 보기
	 */
	public void readOrder();
	
	/**
	 * [mypage] 등록한 상품 상세보기
	 */
	public void readOrderDetail();
	
	/**
	 * [mypage] 등록한 상품 수정하기
	 */
	public void updateOrder();
	
	/**
	 * [mypage] 등록한 상품 삭제하기
	 */
	public void deleteOrder();
	
	/**
	 * [mypage] 등록한 상품 거래완료 처리하기
	 */
	public void completeOrder();
	
	/**
	 * [mypage] 등록한 상품 중 거래완료/기한만료된 상품 list 보기
	 */
	public void readCompletedOrder();

	/**
	 * 여행지 검색에 따른 직구자의 등록상품 list 보기
	 */
	public void searchTripOrders();
	
	/**
	 * 직구자가 등록한 상품 상세보기 (1.상품정보, 2.직구자정보, 3.여행자의 제안정보)
	 */
	public void readUserOrder();
	
}
