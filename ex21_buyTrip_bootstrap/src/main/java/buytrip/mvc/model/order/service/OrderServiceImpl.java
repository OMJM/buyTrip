package buytrip.mvc.model.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import buytrip.mvc.model.dto.ProductDTO;
import buytrip.mvc.model.order.dao.OrderDAO;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDAO orderDAO;
	
	@Override
	public int insertOrder(ProductDTO productDTO) {
		return orderDAO.insertOrder(productDTO);
	}

	@Override
	public List<ProductDTO> readOrder(String proposerId) {
		return orderDAO.readOrder(proposerId);
	}

	@Override
	public ProductDTO readOrderDetail(String productCode) {
		
		return orderDAO.readOrderDetail(productCode);
	}

	@Override
	public int updateOrder(ProductDTO productDTO) {
		int i=orderDAO.updateOrder(productDTO);
		System.out.println(i);
		return i;
	}

	@Override
	public int deleteOrder(String proposerId, String productCode) {
		 
		return orderDAO.deleteOrder(proposerId, productCode);
	}


	@Override
	public List<ProductDTO> completeOrder(String proposerId, String tradeState) {

		return null;
	}

	
	public List<ProductDTO> letedOrder(String proposerId) {
		
		return orderDAO.letedOrder(proposerId);
	}
	@Override
	public List<ProductDTO> searchTripOrders(String arrivalNation) {
		return null;
	}

	@Override
	public ProductDTO readUserOrder() {
		return null;
	}

}
