package manager.dao;

import java.util.List;

import itemboard.bean.ItemboardDTO;
import user.bean.UserDTO;

public interface ManagerDAO {

	public List<UserDTO> getUserList();

	public int userDelete(String id);

	public void itemboardWrite(ItemboardDTO itemboardDTO);

	public List<ItemboardDTO> getItemboardList();

	public List<ItemboardDTO> getIndexBodyNewList();

	public int deleteItemboard(String itemCode);

	public UserDTO getUserInfo(String id);

	public List<ItemboardDTO> salesManage();

	public ItemboardDTO getItemInfo(String itemCode);


}
