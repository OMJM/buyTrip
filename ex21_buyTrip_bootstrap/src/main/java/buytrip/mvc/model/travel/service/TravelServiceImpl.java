package buytrip.mvc.model.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import buytrip.mvc.model.dto.ProductDTO;
import buytrip.mvc.model.dto.TravelDTO;
import buytrip.mvc.model.travel.dao.TravelDAO;

@Service
@Transactional(propagation=Propagation.REQUIRED , isolation=Isolation.DEFAULT)
public class TravelServiceImpl implements TravelService {

	@Autowired
	private TravelDAO travelDAO;
	
	@Override
	public int insert(TravelDTO travelDTO) {
		
		return travelDAO.insert(travelDTO);
	}

	
	/**
	 * mypage 여행관리 여행계획부분.
	 */
	@Override
	public List<TravelDTO> selectAll(String memberId) {
		return travelDAO.selectAll(memberId);
	}
	
	/**
	 * mypage 여행관리 과거여행 부분.
	 */
	public List<TravelDTO> finishAll(String memberId){
		return travelDAO.finishAll(memberId);
	}

	@Override
	public List<TravelDTO> selectPast() {
		
		return travelDAO.selectPast();
	}
	
	/**
	 * mypage 저장한 여행지 상품 list
	 * @return
	 */
	@Override
	public List<ProductDTO> searchList(String nation){
		return travelDAO.searchList(nation);
	}


	@Override
	public int delete(String travelNo) {
		System.out.println("service = "+travelNo);
		return travelDAO.delete(travelNo);
	}



	@Override
	public List<String> suggest(String word) {
		
		return travelDAO.suggest(word);
	
	}

//가격순
	@Override
	public List<ProductDTO> costList(String nation) {
		return travelDAO.costList(nation);
	}
	

}
