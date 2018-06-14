package buytrip.mvc.model.travel.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import buytrip.mvc.model.dto.TravelDTO;

@Repository
public class TravelDAOImpl implements TravelDAO {
	
	@Autowired
	private SqlSession sqlSession;

	/**
	 * 여행자 등록
	 */
	@Override
	public int insert(TravelDTO travelDTO) {
		
		return sqlSession.insert("TravelMapper.insertTravel", travelDTO);
	}

	


	@Override
	public List<TravelDTO> selectAll() {
		
		return sqlSession.selectList("TravelMapper.selectTravel");
	}

	@Override
	public List<TravelDTO> selectPast() {
		
		return sqlSession.selectList("TravelMapper.selectTravelPast");
	}




	@Override
	public int delete(String travelNo) {
		
		System.out.println("Dao = " +travelNo);
		return sqlSession.delete("TravelMapper.deleteTravel", travelNo);
	}




	@Override
	public List<String> suggest(String word) {
		return sqlSession.selectList("TravelMapper.selectSuggest", word);
	}

}
