<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<style>
	#myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
	}
	#myform fieldset legend{
	    text-align: right;
	}
	#myform input[type=radio]{
	    display: none;
	}
	#myform label{
	    font-size: 3em;
	    color: transparent;
	    text-shadow: 0 0 0 #f0f0f0;
	}
	#myform label:hover{
	    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
	}
	#myform label:hover ~ label{
	    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
	}
	#myform input[type=radio]:checked ~ label{
	    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
	}
	#reviewContents {
	    width: 100%;
	    height: 500px;
	    padding: 10px;
	    box-sizing: border-box;
	    border: solid 1.5px #D3D3D3;
	    border-radius: 5px;
	    font-size: 16px;
	    resize: none;
	}
	
</style>
</head>
<body>
	<div class="container">
		<p class="h1 text-center">리뷰 잘좀 써바</p>
		<hr class="border border-primary border-3 opacity-75">
		<form action="review_insert.jsp" class="mb-3" name="myform" id="myform" method="post">
			<fieldset>
				<span class="text-bold">별점을 선택해주세요</span>
				<input type="radio" name="reviewStar" value="5" id="rate5">
				<label for="rate5">★</label>
				<input type="radio" name="reviewStar" value="4" id="rate4">
				<label for="rate4">★</label>
				<input type="radio" name="reviewStar" value="3" id="rate3">
				<label for="rate3">★</label>			
				<input type="radio" name="reviewStar" value="2" id="rate2">
				<label for="rate2">★</label>
				<input type="radio" name="reviewStar" value="1" id="rate1">
				<label for="rate1">★</label>		
			</fieldset>
			<textarea class="col-auto form-control mb-2" type="text" id="reviewContents" name="content"
					  placeholder="잘좀써줘" ></textarea>	
			<button type="submit" class="btn btn-success" >제출</button>	
		</form> 
	</div><%-- 제출할폼 입니다 --%>
	<script>
	</script>
</body>
</html>