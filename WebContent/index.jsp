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

</head>
<body>
<form action="" class="form-inline main_form" >

	<div class="col-md-2">
	
	</div>

	<div class="col-md-8">
		<!-- scrapter insert 하는 div  -->
		<div class="col-md-12">
			<div class="input_area form-group ">	
				<label for="title">title<input type="text" class="form-control" name="title"></label>
				<label for="url">url<input type="text" class="form-control" name="url"></label>
				<label for="title">content<input type="text" class="form-control" name="content"></label>
				<button class="btn btn-primary">입력</button>
			</div>	
		</div>
		<!-- scrater 조회문  -->
		<div class="col-md-12">
			<table class="table">
				<tr>
				<c:forEach var="lists" items="${list }">
					<td>
						${lists.sCode }					
					</td>
					<td>
						${lists.sContent }					
					</td>
					<td>
						${lists.sUrl }					
					</td>
					<td>
						${lists.sKeyword }					
					</td>
					
				</c:forEach>
				</tr>
			</table>
		</div>
		
		
	</div>
		
	
	<div class="col-md-2">
	
	</div>
</form> 

</body>
</html>