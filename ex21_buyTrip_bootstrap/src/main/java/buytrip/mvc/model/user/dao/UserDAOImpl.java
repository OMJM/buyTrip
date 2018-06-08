package buytrip.mvc.model.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import buytrip.mvc.model.user.dto.UserDTO;


@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SqlSession session;

	@Override
	public int signup(UserDTO userDTO) {
		return session.insert("userMapper.registerUser",userDTO);
	}

	@Override
	public void login() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updatePassword() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void selectProfile() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateProfile() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void withdraw() {
		// TODO Auto-generated method stub
		
	}

}
