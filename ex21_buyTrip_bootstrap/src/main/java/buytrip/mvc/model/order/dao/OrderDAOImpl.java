package buytrip.mvc.model.order.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import buytrip.mvc.model.dto.ProductDTO;

@Repository
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	private SqlSession session;
	
	@Override
	public int insertOrder(ProductDTO productDTO) {
	
		return session.insert("orderMapper.insert",productDTO) ;
	}

	@Override
	public List<ProductDTO> readOrder(String proposerId) {
		
		List<ProductDTO>list= session.selectList("orderMapper.mySelect", proposerId);
		
		return list;
				
		
	}

	@Override
	public ProductDTO readOrderDetail(String productCode) {
	
		return session.selectOne("orderMapper.myDetail", productCode);
	}

	@Override
	public int updateOrder( ProductDTO productDTO) {
		
		
		return session.update("orderMapper.myUpdate", productDTO);
	}
		

	@Override
	public int deleteOrder(String proposerId, String productCode) {
		Map<String, String> map =new HashMap<>();
		map.put("proposerId", proposerId);
		map.put("productCode", productCode);
		
		return session.delete("orderMapper.delete", map);
	}

	@Override
	public List<ProductDTO> completeOrder(String proposerId, String tradeState) {

		return null;
	}

	
	public List<ProductDTO> letedOrder(String proposerId) {
	
		
		return session.selectList("orderMapper.myDeadline", proposerId);
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
