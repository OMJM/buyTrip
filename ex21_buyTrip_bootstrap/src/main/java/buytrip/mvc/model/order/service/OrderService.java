package buytrip.mvc.model.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import buytrip.mvc.model.dto.ProductDTO;
import buytrip.mvc.model.order.dao.OrderDAO;


public interface OrderService {
	

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
	public ProductDTO readOrderDetail(String proposerId, String productCode);
	
	/**
	 * [mypage] ����� ��ǰ �����ϱ�
	 */
	public int updateOrder(String proposerId, ProductDTO productDTO);
	
	/**
	 * [mypage] ����� ��ǰ �����ϱ�
	 */
	public int deleteOrder(String proposerId, String productCode);
	
	/**
	 * [mypage] ����� ��ǰ �ŷ��Ϸ� ó���ϱ�
	 */
	public void completeOrder();
	
	/**
	 * [mypage] ����� ��ǰ �� �ŷ��Ϸ�/���Ѹ���� ��ǰ list ����
	 */
	public void readCompletedOrder();

	/**
	 * ������ �˻��� ���� �������� ��ϻ�ǰ list ����
	 */
	public List<ProductDTO> searchTripOrders(String arrivalNation);
	
	/**
	 * �����ڰ� ����� ��ǰ �󼼺��� (1.��ǰ����, 2.����������, 3.�������� ��������)
	 */
	public void readUserOrder();
	
}
