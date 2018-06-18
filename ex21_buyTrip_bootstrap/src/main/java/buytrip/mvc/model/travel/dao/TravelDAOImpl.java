package buytrip.mvc.model.travel.dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import buytrip.mvc.model.dto.ProductDTO;
import buytrip.mvc.model.dto.TravelDTO;

@Repository
public class TravelDAOImpl implements TravelDAO {
	
	@Autowired
	private SqlSession sqlSession;

	/**
	 * 여행자 등록
	 */
	public int insert(TravelDTO travelDTO) {

		return sqlSession.insert("TravelMapper.insertTravel", travelDTO);
	}

	

	/**
	 * mypage내에 있는 여행등록 리스트 출력.
	 */
	@Override
	public List<TravelDTO> selectAll() {
		return sqlSession.selectList("TravelMapper.selectTravel");
	}
	
	/**
	 * mypage내에 있는 기간 만료 여행등록 리스트 출력.
	 */
	public List<TravelDTO> finishAll(){
		return sqlSession.selectList("TravelMapper.selectFinishTravel");
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


	//[mypage]내에 즐겨찾는 여행지 클릭하면 상품list
	@Override
	public List<ProductDTO> searchList(String nation){
		return sqlSession.selectList("TravelMapper.search",nation);
	}

}
