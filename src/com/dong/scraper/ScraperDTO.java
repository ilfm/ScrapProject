package com.dong.scraper;

public class ScraperDTO
{
	private String s_code		// 코드
				 , s_content	// 글내용
				 , s_url		// url
				 , s_keyword	// 키워드
				 , s_date		// 작성일자
				 , m_code		// 사용자코드
				 , s_title		// 글제목
				 , s_like;		// 좋아요
	
	
	
	// getter / setter 구성
	
	public String getS_title()
	{
		return s_title;
	}

	public String getS_like()
	{
		return s_like;
	}

	public void setS_like(String s_like)
	{
		this.s_like = s_like;
	}

	public void setS_title(String s_title)
	{
		this.s_title = s_title;
	}

	public String getS_code()
	{
		return s_code;
	}

	public void setS_code(String s_code)
	{
		this.s_code = s_code;
	}

	public String getS_content()
	{
		return s_content;
	}

	public void setS_content(String s_content)
	{
		this.s_content = s_content;
	}

	public String getS_url()
	{
		return s_url;
	}

	public void setS_url(String s_url)
	{
		this.s_url = s_url;
	}

	public String getS_keyword()
	{
		return s_keyword;
	}

	public void setS_keyword(String s_keyword)
	{
		this.s_keyword = s_keyword;
	}

	public String getS_date()
	{
		return s_date;
	}

	public void setS_date(String s_date)
	{
		this.s_date = s_date;
	}

	public String getM_code()
	{
		return m_code;
	}

	public void setM_code(String m_code)
	{
		this.m_code = m_code;
	}
	
	
	
	
	
}
