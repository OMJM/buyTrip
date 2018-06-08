package buytrip.mvc.model.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import buytrip.mvc.model.user.dao.UserDAO;
import buytrip.mvc.model.user.dto.UserDTO;

@Transactional
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;

	@Override
	public int signup(UserDTO userDTO) {
		return userDAO.signup(userDTO);
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
