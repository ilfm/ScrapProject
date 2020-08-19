package com.dong.scraper;

public class ScraperDTO
{
	private String sCode		// scrap 코드
	             , sContent		// 내용
	             , sUrl			// url
	             , sKeyword; 	// 키워드
	
	// Getter  / Setter 구성
	public String getsCode()
	{
		return sCode;
	}

	public void setsCode(String sCode)
	{
		this.sCode = sCode;
	}

	public String getsContent()
	{
		return sContent;
	}

	public void setsContent(String sContent)
	{
		this.sContent = sContent;
	}

	public String getsUrl()
	{
		return sUrl;
	}

	public void setsUrl(String sUrl)
	{
		this.sUrl = sUrl;
	}

	public String getsKeyword()
	{
		return sKeyword;
	}

	public void setsKeyword(String sKeyword)
	{
		this.sKeyword = sKeyword;
	}
	
	
	
	
}
