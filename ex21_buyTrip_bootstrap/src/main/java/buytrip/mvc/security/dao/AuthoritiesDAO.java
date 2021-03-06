package buytrip.mvc.security.dao;

import java.util.List;

import buytrip.mvc.model.dto.AuthorityDTO;

public interface AuthoritiesDAO {

	/**
	 * 사용자 권한 등록
	 * (한 USER(아이디)가 여러개의 권한을 가질 수 있다.
	 * */
	int insertAuthority(AuthorityDTO authority);
	
	/**
	 * id에 해당하는 권한 검색.
	 * */
	List<AuthorityDTO> selectAuthorityByUserName(String userName);
}






