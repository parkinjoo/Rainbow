package itemboard.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import itemboard.bean.ItemBasketDTO;
import itemboard.bean.ItemBasketListDTO;
import itemboard.bean.ItemboardDTO;
import itemboard.bean.ReviewDTO;
import user.bean.UserDTO;

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
	public void basketDelete(int seq) {
		sqlSession.delete("itemboardSQL.basketDelete", seq);
	}

	@Override
	public List<ItemBasketListDTO> getSideBarList(String id) {
		return sqlSession.selectList("itemboardSQL.getSideBarList", id);
	}

	@Override
	public void SideBarDeleteItem(int seq) {
		sqlSession.delete("itemboardSQL.SideBarDeleteItem", seq);
	}

	@Override
	public void reviewWrite(ReviewDTO reviewDTO) {
		sqlSession.delete("itemboardSQL.reviewWrite",reviewDTO);
		
	}

	@Override
	public List<ItemBasketListDTO> getStayItemList(String id) {
		return sqlSession.selectList("itemboardSQL.getStayItemList", id);
	}

	@Override
	public List<ItemBasketListDTO> getIngItemList(String id) {
		return sqlSession.selectList("itemboardSQL.getIngItemList", id);
	}

	@Override
	public List<ItemBasketListDTO> getReItemList(String id) {
		return sqlSession.selectList("itemboardSQL.getReItemList", id);
	}

	@Override
	public List<ItemBasketListDTO> getEdItemList(String id) {
		return sqlSession.selectList("itemboardSQL.getEdItemList", id);
	}

	@Override
	public void StayItemDelete(Map<String,String> map) {
		sqlSession.update("itemboardSQL.StayItemDelete", map);
	}

	@Override
	public UserDTO getUserDTO(String id) {
		return sqlSession.selectOne("itemboardSQL.getUserDTO", id);
	}

	@Override
	public void refundItem(int seq) {
		sqlSession.update("itemboardSQL.refundItem", seq);
	}

	@Override
	public List<ItemBasketListDTO> orderList(String stus) {
		return sqlSession.selectList("itemboardSQL.orderList", stus);
	}

	@Override
	public void sendItem(int seq, String stus) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("seq", seq+"");
		map.put("stus", stus);
		
		sqlSession.update("itemboardSQL.sendItem", map);
	}

	@Override
	public ItemBasketListDTO getSeqId(int seq) {
		return sqlSession.selectOne("itemboardSQL.getSeqId", seq);
	}

	@Override
	public void refund(Map<String, Object> map) {
		sqlSession.update("itemboardSQL.refund", map);
	}

	@Override
	public void qtyChg(Map<String, Object> map) {
		sqlSession.update("itemboardSQL.qtyChg", map);
		
	}

	@Override
	public int getCash(String id) {
		return sqlSession.selectOne("itemboardSQL.getCash", id);
	}

	@Override
	public void cashChg(Map<String, Object> map) {
		sqlSession.update("itemboardSQL.cashChg", map);
		
	}
	


}
