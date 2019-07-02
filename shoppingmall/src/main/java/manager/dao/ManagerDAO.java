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

}
