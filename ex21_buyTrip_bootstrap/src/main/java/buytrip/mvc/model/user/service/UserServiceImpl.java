package buytrip.mvc.model.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import buytrip.mvc.model.dto.UserDTO;
import buytrip.mvc.model.user.dao.UserDAO;

@Transactional
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
    private PasswordEncoder passwordEncoder;

	@Override
	@Transactional
	public int signup(UserDTO userDTO) {
		//비밀번호를 암호화..
		userDTO.setmemberPassword(passwordEncoder.encode(userDTO.getmemberPassword()));
		
		return userDAO.signup(userDTO);
	}

	@Override
	public UserDTO login(UserDTO userDTO) {
		return userDAO.login(userDTO);

	}
	
	@Override
	public UserDTO findMemberById(String id) {		
		return userDAO.selectUserById(id);
	}

	@Override
	public void updatePassword() {
		// TODO Auto-generated method stub
	}
	
	@Override
	public void updateMember(UserDTO userDTO) {
		userDAO.updateMember(userDTO);
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
	public int withdraw(String memberId, String memberPassword) {
		UserDTO userDTO = userDAO.selectUserById(memberId);
		boolean b = passwordEncoder.matches(memberPassword, userDTO.getmemberPassword());
		if(passwordEncoder.matches(memberPassword, userDTO.getmemberPassword())){
			int re =  userDAO.withdraw(memberId, userDTO.getmemberPassword());
			System.out.println("re : "+ re);
			if(re==0)throw new RuntimeException("삭제되지 않았습니다.");
		}else{
			throw new  RuntimeException ("비밀번호 오류이므로 삭제안됩니다.");
		}
		return 1;
	}

}
