<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProductOptionDao"%>
<%@page import="dto.ProductOptionDto"%>
<%@page import="dao.ProductDao"%>
<%@page import="dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    int productId = Integer.parseInt(request.getParameter("productId"));
    
	ProductDto dto = ProductDao.getInstance().getData(productId);
	
	List<ProductOptionDto> optionList = ProductOptionDao.getInstance().getList();
	
%>
<%--위 코드는 아직 productId 값을 받을게 없어서 임시로 1 설정--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productDetail.jsp</title>
<link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/carousel/">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@2.0/nanumsquare.css">
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="index" name="current"/>
	</jsp:include>
	
	
	<div class="wrap">
		<div class="container">
			<div class="detailArea">
				<div class="thumbnail">
					<div class="imgArea">
						<%--썸네일 각 항목별로 div 메인이미지, 다른이미지(ui)--%>
						<img src="<%=dto.getThumbnail()%>" width="300px" height="300px">
					</div>
					
					<div class="smallImgArea xans-element- xans-product xans-product-addimage listImg">	
						<ul> <%--썸네일 하단 상세 그림 구현 예정 --%>
							<li>
								<img src="<%=dto.getThumbnail()%>" width="60px" height="60px">
							</li>
						</ul>
						<button type="button">
							<span class="blind">다음</span>
						</button>
					</div>
				</div>
				
				
				<div class="infoArea">
					<%--경로 --%>
					<div>
						<ul>
							<li><a href="${pageContext.request.contextPath}/index.jsp">home</a></li>
							<li><a href="${pageContext.request.contextPath}/product/productList.jsp">제품</a>
						</ul>
					</div>
					
					<%-- title--%>
					<div class="titleArea">
						<h1><%=dto.getTitle() %></h1>
						
						<%--한다면 여기에 찜(잠시 보류)--%>
					</div>
					
					<div class="priceArea">
						<%if(dto.getSalePrice() != 0){ %>
							<p><%=dto.getSalePrice() %><span>원</span></p>
							<p class="prd_price"><%=dto.getOrgPrice() %></p> <%--여기에 가운데 취소표시(class) --%>
						<%}else{ %> 
							<p><%=dto.getOrgPrice() %><span>원</span></p>
						<%} %>
					</div>
					
					<div class="basicInfo">
						<table border="1" summary><%--옵션 (적립금있음 나중에추가) --%>
							<caption>기본 정보</caption>
							<tbody>
								<tr>
									<th><span>배송비</span></th>
									<td>
										<span style="font-size:16px;color:#353132;">
											<strong>2,500(50,000 이상 구매 시 무료)</strong>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<div class="optionInfo">
						<table border="1" summary class="xans-element- xans-product xans-product-option xans-record-">
							<caption>상품 옵션</caption>
							<tbody>
							 	<tr>
							 		
							 		<td>
							 			<select id="tmp" option_style="select" required="true" >
							 				<option value="*" selected >-[필수] 같이 구매하기 선택-</option>
							 				<option value="**" disabled>----------------------------------</option>
							 				<option value="non_select">선택 안함</option>
							 				<%for(ProductOptionDto tmp:optionList){ 
							 					if(tmp.getProductId()==productId || tmp.getProductId()==0){%>
							 				
							 					<option value="<%=tmp.getOptionId()%>"><%=tmp.getDescription() %>(+<%=tmp.getAdditionalPrice() %>)</option>
							 				
							 					<%}%>
							 			<%} %>
							 			</select>
							 		
							 		</td>
							 	
							 	</tr>
							
							</tbody>
						</table>
					</div>
					
					
					<div class="totalProducts" id="optionProducts">
						<table border="1" summary>
							<colgroup>
								<col style="width:284px;">
							</colgroup>
							
							<thead>
								<tr>
									<th scope="col">상품명</th>
									<th scope="col">개수</th>
									<th scope="col">가격</th>
								</tr>
							</thead>
							
							<tbody class="displaynone">
								<td></td>
								<td>
									<span class="quantity">
										<input id="quantity" name="quantity_detail" type="text">
										<strong>{{count}}</strong>
										<button @click="plus" class="quantity_up"><a><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif" alt="수량증가"></a></button>
										<button @click="minus" class="quantity_down"><a><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif" alt="수량감소"></a></button>
										
									
									</span>
								</td>
							</tbody>
						</table>
					</div>
					
					
					<div class="totalPrice">
						총 금액
						<span class="total"><em>0</em><strong>(0개)</strong></span>
					</div>
					
					<div class="btnWrap">
						<a href="${pageContext.request.contextPath}/cart.jsp">장바구니</a>
						<a href="${pageContext.request.contextPath}/payment.jsp">구매하기</a>
					</div>
					
					
				</div>
			
				<div class="detail_li"> <%--같은 페이지 내에서 이동 --%>
					<li>
						<a href="">상세정보</a> 
					</li>
					
					<li>
						<a href="">리뷰</a>
					</li>
					
					<li>
						<a href="">상품 Q&A</a>
					</li>
					
				</div>
			
			</div>
		</div>
	</div>
	<script>
						new Vue({
							el:'#quantity',
							data:{
								count:0
							},
							methods:{
								plus:function(){
									this.count++;
								},
								minus:function(){
									this.count--;
								}
							}
						});
					</script>
	<jsp:include page="/include/footer.jsp">
		<jsp:param value="index" name="current"/>
	</jsp:include>
</body>
</html>