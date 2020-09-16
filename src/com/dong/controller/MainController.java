package com.dong.controller;



import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

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
	@RequestMapping(value="/main.action", method= { RequestMethod.GET, RequestMethod.POST })
	public String main(Model model) 
	{
		String view = "";
			
		IScraperDAO dao = SqlSession.getMapper(IScraperDAO.class);
		
		// model에 list넣어주기 
		model.addAttribute("list", dao.list());
		
		ArrayList<ScraperDTO> dto =  dao.list();

		view ="/index.jsp";
		
		
		return view;
	}
	
	// insert 하는 메소드
	@RequestMapping( value="/scraperinsert.action", method= { RequestMethod.GET, RequestMethod.POST })
	public String insert(Model model, HttpServletRequest request) 
	{
		String view = "";
		
		IScraperDAO dao = SqlSession.getMapper(IScraperDAO.class);
		
		String title = request.getParameter("title");
		String url = request.getParameter("url");
		String content = request.getParameter("content");
		
		ScraperDTO dto = new ScraperDTO();
		
		dto.setS_title(title);
		dto.setS_url(url);
		dto.setS_content(content);
		
		dao.insert(dto);
		
		view = "/main.action";
		
		return view;
	}
	
	// 데이터 삭제
	@RequestMapping(value="/scraperdelete.action")
	public String delete(Model model, HttpServletRequest request) 
	{
		String view = "";
		
		// ajax 로 s_code 넘겨받기
		String s_code = request.getParameter("s_code");
		System.out.println(s_code);
		
		IScraperDAO dao = SqlSession.getMapper(IScraperDAO.class);
		int result = dao.delete(s_code);
		
		model.addAttribute("result", result);
		
		
		view = "/main.action";
		return view;
	}
	
	// 특정 사용자 찾기 
	@RequestMapping(value="/usersearch.action")
	public String search(HttpServletRequest request) 
	{
		String view ="";
		String s_code = request.getParameter("s_code");
		
		IScraperDAO dao = SqlSession.getMapper(IScraperDAO.class);
		
		request.setAttribute("result", dao.search(s_code));

		view = "/AjaxArrayList.jsp";
		
		return view;
	}
	
	@RequestMapping(value="/scrapupdate.action")
	public String update(HttpServletRequest request) 
	{
		String view = "";
		
		// 데이터 넘겨받기
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String url = request.getParameter("url");
		
		IScraperDAO dao = SqlSession.getMapper(IScraperDAO.class);
		
		// 데이터 넣은 ScraperDTO 객체 생성
		ScraperDTO dto = new ScraperDTO();
		
		// 데이터 set하기
		dto.setS_title(title);
		dto.setS_content(content);
		dto.setS_url(url);
		
		dao.update(dto);
		
		
		return view;
	}
		
}
