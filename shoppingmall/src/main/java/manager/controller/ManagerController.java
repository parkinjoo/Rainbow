package manager.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import itemboard.bean.ItemboardDTO;
import manager.dao.ManagerDAO;
import user.bean.UserDTO;

@Controller
@RequestMapping(value = "/manager")
public class ManagerController {

	//매니저컨트롤러는 반드시 managerDAO 만 사용 userDAO 삭제
	@Autowired
	private ManagerDAO managerDAO;
	
	
	@RequestMapping(value="/managerPageForm.do")
	public String managerPageForm() {
		return "/manager/managerPageForm";
	}

	@RequestMapping(value = "/managerPage.do", method = RequestMethod.GET)
	public String writeForm(Model model) {
		model.addAttribute("title", "관리자 페이지");
		model.addAttribute("managerUserDisplay", "/manager/userManagement.jsp");
		model.addAttribute("managerItemDisplay", "/manager/itemManagement.jsp");
		model.addAttribute("managerSalesDisplay", "/manager/salesManagement.jsp");
		model.addAttribute("userModalPageDisplay", "/manager/userModalPage.jsp");
		model.addAttribute("itemModalPageDisplay", "/manager/itemModalPage.jsp");
		model.addAttribute("display", "/manager/managerPage.jsp");
		return "/main/index";
	}

	@RequestMapping(value = "/getUserList.do")
	public ModelAndView userList() {
		ModelAndView mav = new ModelAndView();
		List<UserDTO> list = managerDAO.getUserList();
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value= "/getUserInfo.do")
	public ModelAndView getUserInfo(@RequestParam String id) {
		UserDTO userDTO = managerDAO.getUserInfo(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("userDTO", userDTO);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value= "/getItemInfo.do")
	public ModelAndView getItemInfo(@RequestParam String itemcode) {
		ItemboardDTO itemboardDTO = managerDAO.getItemInfo(itemcode);
		ModelAndView mav = new ModelAndView();
		mav.addObject("itemboardDTO", itemboardDTO);
		mav.setViewName("jsonView");
		return mav;
	}

	
    @RequestMapping(value="/userDelete.do", method=RequestMethod.POST)
    @ResponseBody
    public void userDelete(@RequestParam(value="chkbox[]") List<String> id) {
    	for(int i=0; i<id.size(); i++) {
    		managerDAO.userDelete(id.get(i));
    	}
    }
    


	@RequestMapping(value="/itemboardWrite.do", method=RequestMethod.POST)
	public String itemboardWrite(@ModelAttribute ItemboardDTO itemboardDTO, @RequestParam MultipartFile[] img, Model model) {
		//filePath 이 부분 통힐하기 전까지 각자 설정하셔야 해요
		String filePath = "C:\\Spring\\project\\shoppingmall\\src\\main\\webapp\\storage";
		String fileName;
		File file;
		
		//-----------------------
		System.out.println(img.length);
		//-----------------------
		if(img[0]!=null) {
			fileName = img[0].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[0].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
		
			itemboardDTO.setImg1(fileName);
		}else {
			itemboardDTO.setImg1(null);
		}
		//-------------------
		if(img[1]!=null) {
			fileName = img[1].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[1].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
		
			itemboardDTO.setImg2(fileName);
		}else {
			itemboardDTO.setImg2(null);
		}
		//-----------------------
		if(img[2]!=null) {
			fileName = img[2].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[2].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			itemboardDTO.setImg3(fileName);
		}else {
			itemboardDTO.setImg3(null);
		}
		//----------------------------------------------------
		if(img[3]!=null) {
			fileName = img[3].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[3].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			itemboardDTO.setImg4(fileName);
		}else {
			itemboardDTO.setImg4(null);
		}
		
		managerDAO.itemboardWrite(itemboardDTO);
		model.addAttribute("title", "관리자 페이지");
		model.addAttribute("managerUserDisplay", "/manager/userManagement.jsp");
		model.addAttribute("managerItemDisplay", "/manager/itemManagement.jsp");
		model.addAttribute("modalPageDisplay", "/manager/modalPage.jsp");
		model.addAttribute("display", "/manager/managerPage.jsp");
		return "/main/index";
	}
	
	@RequestMapping(value = "/getItemboardList.do")
	public ModelAndView getItemboardList() {
		ModelAndView mav = new ModelAndView();
		List<ItemboardDTO> list = managerDAO.getItemboardList();
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		return mav;
	}
	
    @RequestMapping(value="getIndexBodyNewList.do", method=RequestMethod.POST)
    public ModelAndView getIndexBodyNewList() {
		ModelAndView mav = new ModelAndView();
		List<ItemboardDTO> list = managerDAO.getIndexBodyNewList();
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		return mav;
    }
    
    @RequestMapping(value="getIndexBodyList.do", method=RequestMethod.POST)
    public ModelAndView getIndexBodyList() {
		ModelAndView mav = new ModelAndView();
		List<ItemboardDTO> list = managerDAO.getItemboardList();
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		return mav;
    }
    
    @RequestMapping(value="/deleteItemboard.do", method=RequestMethod.POST)
    @ResponseBody
    public void deleteItemboard(@RequestParam(value="chkbox[]") List<String> itemCode) {
    	for(int i=0; i<itemCode.size(); i++) {
    		managerDAO.deleteItemboard(itemCode.get(i));
    	}
    }

    @RequestMapping(value="/salesManage.do", method=RequestMethod.POST)
	public ModelAndView salesManage() {
		ModelAndView mav = new ModelAndView();
		List<ItemboardDTO> list = managerDAO.salesManage();
		
		List<String> ticks = new ArrayList<String>();
		List<String> barChart1 = new ArrayList<String>();
		List<String> barChart2 = new ArrayList<String>();

		for(ItemboardDTO data : list) {
			ticks.add(data.getItemCode());
			barChart1.add(data.getRegistday());
			barChart2.add(data.getSalePrice()+"");
			
		}
		mav.addObject("ticks", ticks);
	//	mav.addObject("barChart1", barChart1); //날짜
		mav.addObject("barChart2", barChart2); //가격
		mav.setViewName("jsonView");
		return mav;
	}
}
