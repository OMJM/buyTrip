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
		System.out.println(proposerId);
		return list;
				
		
	}

	@Override
	public ProductDTO readOrderDetail(String proposerId, String productCode) {
		Map<String, String> map= new HashMap<>();
		map.put("proposerId", proposerId);	
		map.put("productCode", productCode);
		 session.selectOne("orderMapper.myDetail", map);
	
		return session.selectOne("orderMapper.myDetail", map);
	}

	@Override
	public int updateOrder(String proposerId, ProductDTO productDTO) {
		Map<String, Object> map= new HashMap<>();
		map.put("proposerId", proposerId);
		map.put("productDTO", productDTO);
		return session.delete("orderMapper.update", map);
	}

	@Override
	public int deleteOrder(String proposerId, String productCode) {
		Map<String, String> map =new HashMap<>();
		map.put("proposerId", proposerId);
		map.put("productCode", productCode);
		return session.delete("orderMapper.delete", map);
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
		return null;
	}

	@Override
	public void readUserOrder() {
		// TODO Auto-generated method stub

	}

}
