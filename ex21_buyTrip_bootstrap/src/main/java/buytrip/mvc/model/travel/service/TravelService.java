package buytrip.mvc.model.travel.service;

import java.util.List;

import buytrip.mvc.model.dto.TravelDTO;

public interface TravelService {
	
	
	/**
	 * addTrip ���� ���� �����Ͽ� �������� ���ã�� �߰��ϱ� (�˸����:�޼���,�������ǻ���ǰ)
	 */
	int insert (TravelDTO travelDTO);
	
	
	/**
	 * [mypage] ����� �������� �����ϱ�
	 */
	int delete(String travelNo);
	
	/**
	 * [mypage] ����� �������� �� ��ü list ����
	 */
	List<TravelDTO> selectAll();
	
	/**
	 * [mypage] ����� �������� �� ���Ѹ���� list ����
	 */
	List<TravelDTO> selectPast();
	
	/**
	 * ������ �ܾ� �ڵ��ϼ�
	 */
	List<String> suggest(String word);


}
