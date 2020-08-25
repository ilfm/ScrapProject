package com.dong.scraper;

import java.util.ArrayList;

public interface IScraperDAO
{
	// 사용자 스크랩한 목록 출력하는 메소드
	public ArrayList<ScraperDTO> list();
	
	// 사용자가 스트랩한 목록을 입력하는 메소드
	public int insert(ScraperDTO dto);
	
	// 사용자가 스크랩한 목록 삭제
	public int delete(String s_code);
}
