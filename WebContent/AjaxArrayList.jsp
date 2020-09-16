<%@page import="net.sf.json.JSONObject"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="com.dong.scraper.ScraperDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%

	ScraperDTO list = (ScraperDTO)request.getAttribute("result");

	// 제이슨 객체 생성
	JSONObject jobj = new JSONObject();
	
	jobj.put("title", list.getS_title());
	jobj.put("content", list.getS_content());
	jobj.put("url", list.getS_url());
	
	
	out.print(jobj.toString());
%>