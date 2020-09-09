<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scraper</title>





<link rel="stylesheet" href="css/MainPage.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">

<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	
	// 입력 시 유효성 검사
	function checkInsert()
	{
		const title = document.getElementById("title").value;
		const url = document.getElementById("url").value;
		const content = document.getElementById("content").value;
				
		// 제목을 입력하지 않은 경우
		if( title == "" || title ==null || title ==" " )
		{
			alert("제목을 입력해주세요");
			return false;
		}
		
		//	url을 입력하지 않은 경우
		if( url == "" || url ==null || url ==" " )
		{
			alert("url 을 입력해주세요");
			return false;
		}
		
		// 내용을 입력하지 않은 경우
		if( content == "" || content ==null || content ==" " )
		{
			alert("내용을 입력해주세요");
			return false;
		}
		
		return true;
	}
	
	// 수정 버튼 클릭 시 
	function dataUpdate(obj)
	{		
		const s_code = obj;
		
		$.ajax({ type:"get"
            , url:"usersearch.action"
            , data:{s_code : s_code }
            , success: function(data)
             {    
              	//alert(data.title);
              	//alert(data.content);
              	//alert(data.url);
               
              	for (key in data) {
              		console.log(data[key]);
              	}
              	
             }
            ,error:function(request,status,error)
            {
                 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
             }

      
      
      });
		
		
		
	}
	
	// 삭제 버튼 클릭 시 
	function dataDelete(data)
	{
		
		if(confirm("정말 삭제하시겠습니까?"))
		{
			
			$.ajax({ type:"get"
	            , url:"scraperdelete.action"
	            , data:{s_code :data.value }
	            , success: function(data)
	             {    
	               window.location="/ScrapProject/main.action";
	               
	             }
	            ,error:function(request,status,error)
	            {
	                 //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	             }
	
	      
	      
	      });
	 }

		
	}

</script>	
</head>
<body>
<form action="scraperinsert.action" class="form-inline main_form" onsubmit="return checkInsert();" method="post">

	<div class="col-md-2">
	
	</div>

	<div class="col-md-8">
		<!-- scrapter insert 하는 div  -->
		<div class="col-md-12">
			<div class="input_area form-group ">	
				<label for="title">title<input type="text" class="form-control" id="title" name="title"></label>
				<label for="url">url<input type="text" class="form-control" id="url" name="url"></label>
				<label for="title">content<input type="text" class="form-control" id="content" name="content"></label>
				<button class="btn btn-primary" type="submit">입력</button>
			</div>	
		</div>
		<!-- scrater 조회문  -->
		<div class="col-md-12">
			<table class="table scrap_content">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>url</th>
					<th>내용</th>
					<th>키워드</th>
					<th>작성일자</th>
					<th></th>
				</tr>
				
				<c:forEach var="lists" items="${list }">
				<tr>	
					<td>
						${lists.s_code }					
					</td>
					<td>
						${lists.s_title }					
					</td>
					<td>
						<a href="${lists.s_url }"  target=”_blank”>${lists.s_url }	</a>				
					</td>
					<td>
						${lists.s_content }					
					</td>
					
					<td>
					<c:choose>
						<c:when test="${lists.s_keyword eq -1}">
							
						</c:when>
						<c:otherwise>
							${lists.s_keyword }
						</c:otherwise>					
					</c:choose>
					</td>
					<td>
						${lists.s_date }
					</td>
					<td>
						<button type="button" class="btn btn-primary"  id="${lists.s_code }" value=""onclick="dataUpdate(this.id)">수정</button>
						<button type="button" class="btn btn-primary" value="${lists.s_code }" onclick="dataDelete(this)">삭제</button>
					</td>
				</tr>	
				</c:forEach>				
			</table>
		</div>
		
		
	</div>
		
	
	<div class="col-md-2">
	
	</div>
</form> 

</body>
</html>