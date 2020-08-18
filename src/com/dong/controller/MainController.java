package com.dong.controller;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController
{

	/*
	 * @Autowired private SqlSession SqlSession;
	 */
	
	// Springframework.web에 있는 것  
	// 메인으로 보내는 컨트롤러
	@RequestMapping(value="/main.action", method=RequestMethod.GET)
	public String main(Model model) 
	{
		String view = "";
		
		view ="/index.jsp";
		
		
		return view;
	}
	
}
