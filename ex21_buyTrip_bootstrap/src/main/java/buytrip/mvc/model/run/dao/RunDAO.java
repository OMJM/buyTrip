package buytrip.mvc.model.run.dao;

import java.util.List;

import buytrip.mvc.model.dto.HighestDealDTO;
import buytrip.mvc.model.dto.ProductDTO;

public interface RunDAO {

	/**
	 * [travel page] �ֱ� ��ϵ� �������� �����ֱ�
	 */
	public void recentAddTrips();
	
	/**
	 * [order page] �ֱ� �����ڰ� ����� ��ǰ �����ֱ� (���� : �ֽż�)
	 */
	public void recentOrders();
	
	/**
	 * [main page] �ֱ� �Ϸ�� �ֹ� �����ֱ�
	 */
	public void recentCompletedOrders();
	
	/**
	 * [main page] �ŷ������� Top3���� �����ֱ�(��ϼ� ��� �ŷ��Ϸ��)
	 * @return 
	 */
	public List<HighestDealDTO> highestDeal();
	
	/**
	 * ȸ�� �����Ű��
	 */
	public void fire();

		/**
	 * travel������ �ֱ� ����� ��ǰ TOP4
	 */
	List<ProductDTO> recentTop4();
}
