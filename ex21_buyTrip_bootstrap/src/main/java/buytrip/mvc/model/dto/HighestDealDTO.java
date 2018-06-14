package buytrip.mvc.model.dto;

/**
 * ��ǰ��ϼ� Top3 ���� (��ǰ��ϼ�, �ŷ��Ϸ��, �ŷ���)
 * (travel ������)
 */
public class HighestDealDTO {

	private String arrivalNation;  //��߳���
	private int completedDealNumber; //�Ϸ�� �ŷ���
	private int orderNumber; //��ǰ��ϼ�
	private int deal; //�ŷ���
	
	public String getArrivalNation() {
		return arrivalNation;
	}
	public void setArrivalNation(String arrivalNation) {
		this.arrivalNation = arrivalNation;
	}
	public int getCompletedDealNumber() {
		return completedDealNumber;
	}
	public void setCompletedDealNumber(int completedDealNumber) {
		this.completedDealNumber = completedDealNumber;
	}
	public int getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}
	public int getDeal() {
		return deal;
	}
	public void setDeal(int deal) {
		this.deal = deal;
	}
	

	
}
