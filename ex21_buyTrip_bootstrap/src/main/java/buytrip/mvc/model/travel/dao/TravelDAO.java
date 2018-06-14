package buytrip.mvc.model.travel.dao;

import java.util.List;

import buytrip.mvc.model.dto.TravelDTO;

public interface TravelDAO {
	
	/**
	 * addTrip ���� ���� �����Ͽ� �������� ���ã�� �߰��ϱ� (�˸����:�޼���,�������ǻ���ǰ)
	 */
	int insert (TravelDTO travelDTO);
	
	/**
	 * [mypage] ����� �������� �����ϱ�
	 */
	int delete(String arrivalDate);
	
	/**
	 * [mypage] ����� �������� �� �ֱ� ��� ��ü ����
	 */
	List<TravelDTO> selectAll();
	
	/**
	 * [mypage] ����� �������� �� �Ⱓ ���� ����
	 */
	List<TravelDTO> selectPast();
	
	/**
	 * ������ �˻� ��� �ܾ� �ڵ��ϼ�
	 */
	List<String> suggest(String word);


}
