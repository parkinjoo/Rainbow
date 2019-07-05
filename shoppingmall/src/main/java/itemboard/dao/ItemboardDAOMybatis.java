package itemboard.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import itemboard.bean.ItemBasketDTO;
import itemboard.bean.ItemBasketListDTO;
import itemboard.bean.ItemboardDTO;

@Transactional
@Repository
public class ItemboardDAOMybatis implements ItemboardDAO{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void itemboardWrite(ItemboardDTO itemboardDTO) {
		sqlSession.insert("itemboardSQL.itemboardWrite", itemboardDTO);
	}
	
	@Override
	public List<ItemboardDTO> getItemboardList(Map<String, Object> map) {
		return sqlSession.selectList("itemboardSQL.getItemboardList", map);
	}
	
	@Override
	public int getTotalA(Map<String, Object> map) {
		return sqlSession.selectOne("itemboardSQL.getTotalA", map);
	}
	
	@Override
	public ItemboardDTO getItemboardView(String itemCode) {
		return sqlSession.selectOne("itemboardSQL.getItemboardView", itemCode);
	}

	@Override
	public void itemBasket(ItemBasketDTO itemBasketDTO) {
		sqlSession.insert("itemboardSQL.itemBasket", itemBasketDTO);
	}

	@Override
	public List<ItemBasketListDTO> getItembasketList(Map<String, Object> map) {
		return sqlSession.selectList("itemboardSQL.getItembasketList", map);
	}

	@Override
	public ItemboardDTO getSize(Map<String, String> map) {
		return sqlSession.selectOne("itemboardSQL.getSize",map);
	}

	@Override
	public void basketFlush(String id) {
		sqlSession.delete("itemboardSQL.basketFlush", id);
		
	}

	@Override
	public int basketDelete(String itemCode) {
		return sqlSession.delete("itemboardSQL.basketDelete", itemCode);
		
	}
}
