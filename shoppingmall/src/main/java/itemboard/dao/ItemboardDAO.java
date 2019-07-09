package itemboard.dao;

import java.util.List;
import java.util.Map;

import itemboard.bean.ItemBasketDTO;
import itemboard.bean.ItemBasketListDTO;
import itemboard.bean.ItemboardDTO;
import user.bean.UserDTO;
import itemboard.bean.ReviewDTO;

public interface ItemboardDAO {

	public void itemboardWrite(ItemboardDTO itemboardDTO);
	
	public List<ItemboardDTO> getItemboardList(Map<String, Object> map);
	
	public int getTotalA(Map<String, Object> map);

	public ItemboardDTO getItemboardView(String itemCode);

	public void itemBasket(ItemBasketDTO itemBasketDTO);

	public List<ItemBasketListDTO> getItembasketList(Map<String, Object> map);

	public ItemboardDTO getSize(Map<String, String> map);

	public void basketFlush(String id);

	public void basketDelete(int seq);

	public List<ItemBasketListDTO> getSideBarList(String id);

	public void SideBarDeleteItem(int seq);

	public void reviewWrite(ReviewDTO reviewDTO);

	public List<ItemBasketListDTO> getStayItemList(String id);

	public List<ItemBasketListDTO> getIngItemList(String id);

	public List<ItemBasketListDTO> getReItemList(String id);

	public List<ItemBasketListDTO> getEdItemList(String id);

	public void StayItemDelete(Map<String,String> map);

	public UserDTO getUserDTO(String id);

	public void refundItem(int seq);
}
