package com.dong.scraper;

import java.util.ArrayList;

public interface IScraperDAO
{
	// 사용자 스크랩한 목록 출력하는 메소드
	public ArrayList<ScraperDTO> list();
}
