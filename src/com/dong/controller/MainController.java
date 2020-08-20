package com.dong.controller;



import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dong.scraper.IScraperDAO;
import com.dong.scraper.ScraperDTO;

@Controller
public class MainController
{

	  @Autowired 
	  private SqlSession SqlSession;
	 
	
	// Springframework.web에 있는 것  
	// 메인으로 보내는 컨트롤러
	@RequestMapping(value="/main.action", method=RequestMethod.GET)
	public String main(Model model) 
	{
		String view = "";
		
		
		
			IScraperDAO dao = SqlSession.getMapper(IScraperDAO.class);
			
			// model에 list넣어주기 
			model.addAttribute("list", dao.list());
			
			ArrayList<ScraperDTO> dto =  dao.list();
			
			/* System.out.println(dto.get(0).getsCode()); */
		
			
	
	
		view ="/index.jsp";
		
		
		return view;
	}
	
}
