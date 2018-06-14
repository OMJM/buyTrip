package buytrip.mvc.model.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

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

	

	@Override
	public List<TravelDTO> selectAll() {
		
		return travelDAO.selectAll();
	}

	@Override
	public List<TravelDTO> selectPast() {
		
		return travelDAO.selectPast();
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

	

}
