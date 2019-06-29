package user.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import user.bean.UserDTO;

@Repository
public class UserDAOMybatis implements UserDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public UserDTO checkId(String id) {
		return sqlSession.selectOne("userSQL.checkId", id);
	}
	
	@Override
	public void join(UserDTO userDTO) {
		sqlSession.insert("userSQL.join", userDTO);
	}

	@Override
	public UserDTO login(String id) {
		return sqlSession.selectOne("userSQL.login", id);
	}

	@Override
	public String pwdCheck(String id) {
		return sqlSession.selectOne("userSQL.pwdCheck", id);
	}

	@Override
	public List<UserDTO> getUserList() {
		return sqlSession.selectList("userSQL.getUserList");
	}

	@Override
	public void grade(String id) {
		sqlSession.update("userSQL.grade", id);
	}
	
	@Override
	public void modify(UserDTO userDTO) {
		sqlSession.update("userSQL.modify", userDTO);
	}
	
	@Override
	public UserDTO findId(String name, String email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("email", email);
		
		return sqlSession.selectOne("userSQL.findId",map);
	}

	@Override
	public UserDTO findPwd(Map<String, String> map) {
		return sqlSession.selectOne("userSQL.findpwd",map);
	}

	@Override
	public void updatePassword(UserDTO userDTO) {
		sqlSession.update("userSQL.updatePW", userDTO);
		
	}
}
