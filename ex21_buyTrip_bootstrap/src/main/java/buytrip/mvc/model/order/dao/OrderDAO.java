package buytrip.mvc.model.order.dao;

import java.util.List;

import buytrip.mvc.model.dto.ProductDTO;

public interface OrderDAO {

	/**
	 * ��ǰ ����ϱ�
	 */
	public int insertOrder(ProductDTO productDTO);
	
	/**
	 * [mypage] ����� ��ǰ lsit ����
	 */
	public List<ProductDTO> readOrder(String proposerId);
	
	/**
	 * [mypage] ����� ��ǰ �󼼺���
	 */
	public ProductDTO readOrderDetail(String productCode);
	
	/**
	 * [mypage] ����� ��ǰ �����ϱ�
	 */
	public int updateOrder(ProductDTO productDTO);
	
	/**
	 * [mypage] ����� ��ǰ �����ϱ�
	 */
	public int deleteOrder(String proposerId, String productCode);
	
	/**
	 * [mypage] ����� ��ǰ �ŷ��Ϸ� ó���ϱ�
	 */
	public List<ProductDTO> completeOrder(String proposerId, String tradeState);
	

	/**
	 * /���Ѹ���� ��ǰ list ����
	 */
	public List<ProductDTO> letedOrder(String proposerId);
	
	/**
	 * ������ �˻��� ���� �������� ��ϻ�ǰ list ����
	 */
	public List<ProductDTO> searchTripOrders(String arrivalNation);
	
	/**
	 * �����ڰ� ����� ��ǰ �󼼺��� (1.��ǰ����, 2.����������, 3.�������� ��������)
	 */
	public ProductDTO readUserOrder();
	
}
