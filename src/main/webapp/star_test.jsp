<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<style>
 	.left-star, .right-star {
 		display: inline-block;
	  	width: 4px; /* Adjust the width as needed */
	  	height: 8px; /* Adjust the height as needed */
	  	background-size: cover; 
	  	background-position: center; /* Center the background image */
		margin: 0;
	  	padding: 0;
	}
	
	.left-star {
		background-image: url('assets/left-star.png');
	}

	.right-star {
		background-image: url('assets/right-star.png');
	}
 	</style>  
</head>
<body>
	<div class="container">
		<div class="review-score">
			<div class="left-star"></div><div class="right-star"></div><div class="left-star"></div><div class="right-star"></div>
			<div class="left-star"></div><div class="right-star"></div>
			<div class="left-star"></div><div class="right-star"></div>
			<div class="left-star"></div><div class="right-star"></div>					
		</div>
	</div>
<script>
</script>
</body>
</html>