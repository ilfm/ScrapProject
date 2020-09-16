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
	
	// 사용자가 쓴 특정 스크랩 정보 찾기
	public ScraperDTO search(String s_code);
	
	// 사용자가 선택한 해당 데이터 수정
	public int update(ScraperDTO dto);
}
