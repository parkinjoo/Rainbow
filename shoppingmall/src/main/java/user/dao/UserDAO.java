package user.dao;

import java.util.List;
import java.util.Map;

import user.bean.UserDTO;

public interface UserDAO {

	public UserDTO checkId(String id);

	public UserDTO login(String id);

	public String pwdCheck(String id);
	
	public List<UserDTO> getUserList();

	public void join(UserDTO userDTO);
	
	public void modify(UserDTO userDTO);
	
	public UserDTO findId(String name, String email);

	public UserDTO findPwd(Map<String, String> map);

	public void updatePassword(UserDTO userDTO);
	
	public void grade(String id);
}
