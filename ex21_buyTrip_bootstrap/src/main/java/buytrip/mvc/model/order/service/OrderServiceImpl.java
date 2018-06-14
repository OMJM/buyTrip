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
	public ProductDTO readOrderDetail(String proposerId, String productCode) {
		
		return orderDAO.readOrderDetail(proposerId, productCode);
	}

	@Override
	public int updateOrder(String proposerId, ProductDTO productDTO) {
		
		return orderDAO.updateOrder(proposerId, productDTO);
	}

	@Override
	public int deleteOrder(String proposerId, String productCode) {
		 
		return orderDAO.deleteOrder(proposerId, productCode);
	}

	@Override
	public void completeOrder() {
		// TODO Auto-generated method stub

	}

	@Override
	public void readCompletedOrder() {
		// TODO Auto-generated method stub

	}

	@Override
	public List<ProductDTO> searchTripOrders(String arrivalNation) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void readUserOrder() {
		// TODO Auto-generated method stub

	}

}
