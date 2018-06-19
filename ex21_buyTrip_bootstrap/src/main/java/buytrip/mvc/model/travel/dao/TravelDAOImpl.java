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
	 * ������ ���
	 */
	public int insert(TravelDTO travelDTO) {

		return sqlSession.insert("TravelMapper.insertTravel", travelDTO);
	}

	

	/**
	 * mypage���� �ִ� ������ ����Ʈ ���.
	 */
	@Override
	public List<TravelDTO> selectAll(String memberId) {
		return sqlSession.selectList("TravelMapper.selectTravel",  memberId);
	}
	
	/**
	 * mypage���� �ִ� �Ⱓ ���� ������ ����Ʈ ���.
	 */
	public List<TravelDTO> finishAll(String memberId){
		return sqlSession.selectList("TravelMapper.selectFinishTravel",  memberId);
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


	//[mypage]���� ���ã�� ������ Ŭ���ϸ� ��ǰlist
	@Override
	public List<ProductDTO> searchList(String nation){
		return sqlSession.selectList("TravelMapper.search",nation);
	}

}
