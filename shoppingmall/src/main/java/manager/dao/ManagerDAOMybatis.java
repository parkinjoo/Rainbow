package manager.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import itemboard.bean.ItemboardDTO;
import user.bean.UserDTO;

@Repository
public class ManagerDAOMybatis implements ManagerDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<UserDTO> getUserList() {
		return sqlSession.selectList("managerSQL.getUserList");
	}

	@Override
	public int userDelete(String id) {
		return sqlSession.delete("managerSQL.userDelete", id);
	}

	@Override
	public void itemboardWrite(ItemboardDTO itemboardDTO) {
		sqlSession.insert("managerSQL.itemboardWrite", itemboardDTO);
	}

	@Override
	public List<ItemboardDTO> getItemboardList() {
		return sqlSession.selectList("managerSQL.getItemboardList");
	}
	
	@Override
	public List<ItemboardDTO> getIndexBodyNewList() {
		return sqlSession.selectList("managerSQL.getIndexBodyNewList");
	}

	@Override
	public void deleteItemboard(String itemcode) {
		sqlSession.delete("managerSQL.deleteItemboard", itemcode);
	}


}
