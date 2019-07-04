package itemboard.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import itemboard.bean.ItemBasketDTO;
import itemboard.bean.ItemBasketListDTO;
import itemboard.bean.ItemboardDTO;
import itemboard.bean.ItemboardPaging;
import itemboard.dao.ItemboardDAO;
import user.bean.UserDTO;

@Controller
@RequestMapping(value="/itemboard")
public class ItemboardController {
	@Autowired
	private ItemboardDAO itemboardDAO;
	@Autowired
	private ItemboardPaging itemboardPaging;
	
	
	@RequestMapping(value="/itemboardWrite.do", method=RequestMethod.POST)
	public String itemboardWrite(@ModelAttribute ItemboardDTO itemboardDTO,
								  @RequestParam MultipartFile[] img,
								  Model model) {
		//filePath 이 부분 통힐하기 전까지 각자 설정하셔야 해요
		String filePath = "C:\\Spring\\project\\shoppingmall\\src\\main\\webapp\\storage";
		String fileName;
		File file;
		
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
		
		
//		System.out.println(itemboardDTO);
		itemboardDAO.itemboardWrite(itemboardDTO);
		
		//model.addAttribute("display", "/itemboard/itemboardList.jsp");
		model.addAttribute("display", "/manager/managerPage.jsp");
		return "/main/index";
	}

	@RequestMapping(value="/itemboardList.do", method=RequestMethod.GET)
	public String itemboardList(@RequestParam(required=false, defaultValue="1") String pg, @RequestParam(required=false, defaultValue="") String categoryCode, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("categoryCode", categoryCode);
		model.addAttribute("display", "/itemboard/itemboardList.jsp");
		return "/main/index";
	}
	
	@RequestMapping(value="/getItemboardList.do", method=RequestMethod.POST)
	public ModelAndView getItemboardList(@RequestParam(required=false, defaultValue="1") String pg, @RequestParam(required=false, defaultValue="") String categoryCode) {
//		System.out.println("categoryCode = " + categoryCode);
		//DB - 1페이지당 3개씩
		int endNum = Integer.parseInt(pg)*4;
		int startNum = endNum-3;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		map.put("categoryCode", categoryCode);
	
		List<ItemboardDTO> list = itemboardDAO.getItemboardList(map);
		
		//페이징처리
		int totalA = itemboardDAO.getTotalA(map);
		itemboardPaging.setCurrentPage(Integer.parseInt(pg));
		itemboardPaging.setPageBlock(3);
		itemboardPaging.setPageSize(4);
		itemboardPaging.setTotalArticle(totalA);
		itemboardPaging.makePagingHTML();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("categoryCode", categoryCode);
		mav.addObject("list", list);
		mav.addObject("itemboardPaging", itemboardPaging);
		mav.setViewName("jsonView");
		
		return mav;
	}
	@RequestMapping(value="/getItembasketList.do", method=RequestMethod.POST)
	public ModelAndView getItembasketList(@RequestParam(required=false, defaultValue="") String itemCode,
										  @RequestParam(required=false, defaultValue="1") String pg,
										  @RequestParam(required=false, defaultValue="") String categoryCode,
										  Model model) {
		
		int endNum = Integer.parseInt(pg)*4;
		int startNum = endNum-3;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		map.put("categoryCode", categoryCode);
		map.put("itemCode", itemCode);
		
		List<ItemBasketListDTO> list = itemboardDAO.getItembasketList(map);
		
		//����¡ó��
		int totalA = itemboardDAO.getTotalA(map);
		itemboardPaging.setCurrentPage(Integer.parseInt(pg));
		itemboardPaging.setPageBlock(3);
		itemboardPaging.setPageSize(3);
		itemboardPaging.setTotalArticle(totalA);
		itemboardPaging.makePagingHTML();
	
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("itemCode", itemCode);
		mav.addObject("categoryCode", categoryCode);
		mav.addObject("list", list);
		mav.addObject("itemboardPaging", itemboardPaging);
		mav.setViewName("jsonView");
		return mav;
		
	}
	
	@RequestMapping(value="/itemboardView.do", method=RequestMethod.GET)
	public String itemboardView(@RequestParam String categoryCode, @RequestParam String itemCode, @RequestParam String pg, Model model) {
		
		ItemboardDTO itemboardDTO = itemboardDAO.getItemboardView(itemCode);
		model.addAttribute("itemboardDTO",itemboardDTO);
		model.addAttribute("categoryCode", categoryCode);
		model.addAttribute("itemCode", itemCode);
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/itemboard/itemboardView.jsp");
		
		return "/main/index";
	}
	
	@RequestMapping(value="/getItemboardView.do", method=RequestMethod.POST)
	public ModelAndView getItemboardView(@RequestParam String itemCode, @RequestParam String categoryCode, @RequestParam String pg) {
		ItemboardDTO itemboardDTO = itemboardDAO.getItemboardView(itemCode);
		
//		System.out.println("asdasdasdcategoryCode=" +categoryCode );
//		System.out.println("asdasdasditemCode=" + itemCode);
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("itemCode", itemCode);
		map.put("categoryCode", categoryCode);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("itemboardDTO", itemboardDTO);
		mav.addObject("map", map);
		mav.setViewName("jsonView");
		return mav;
	}
	//컬러 선택시 사이즈 얻기 
	@RequestMapping(value="/getSize.do",method=RequestMethod.POST)
	public ModelAndView getSize(@RequestParam String itemCode, @RequestParam String color) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("itemCode",itemCode);
		map.put("color",color); 
		ItemboardDTO itemboardDTO = itemboardDAO.getSize(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("itemboardDTO",itemboardDTO);
		mav.setViewName("jsonView");
		
		return mav;
		 
	}
	
	//장바구니
	@RequestMapping(value="/itemBasket.do", method=RequestMethod.POST)
	public String itemBasket(@ModelAttribute ItemBasketDTO itemBasketDTO, Model model,HttpSession session) {
		UserDTO userDTO = (UserDTO) session.getAttribute("userDTO");
		itemBasketDTO.setId(userDTO.getId());
		itemboardDAO.itemBasket(itemBasketDTO);
		
		model.addAttribute("display", "/itemboard/itemBasket.jsp");
		return "/main/index";
	}
}
