package itemboard.dao;

import java.util.List;
import java.util.Map;

import itemboard.bean.ItemBasketDTO;
import itemboard.bean.ItemBasketListDTO;
import itemboard.bean.ItemboardDTO;

public interface ItemboardDAO {

	public void itemboardWrite(ItemboardDTO itemboardDTO);
	
	public List<ItemboardDTO> getItemboardList(Map<String, Object> map);
	
	public int getTotalA(Map<String, Object> map);

	public ItemboardDTO getItemboardView(String itemCode);

	public void itemBasket(ItemBasketDTO itemBasketDTO);

	public List<ItemBasketListDTO> getItembasketList(Map<String, Object> map);

	public ItemboardDTO getSize(Map<String, String> map);

	public void basketFlush(String id);

	public void basketDelete(String itemCode);

	public List<ItemBasketListDTO> getSideBarList(String id);

	public void SideBarDeleteItem(int seq);

}
