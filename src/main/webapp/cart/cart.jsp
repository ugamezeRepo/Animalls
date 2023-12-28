<%@page import="java.util.stream.Collectors"%>
<%@page import="dao.MemberDao"%>
<%@page import="dto.MemberDto"%>
<%@page import="dao.ProductOptionDao"%>
<%@page import="dto.ProductOptionDto"%>
<%@page import="dao.ProductDao"%>
<%@page import="dto.ProductDto"%>
<%@page import="java.util.List"%>
<%@page import="dao.CartItemDao"%>
<%@page import="dto.CartItemDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//String id = (String)session.getAttribute("id");
	String id = "dum1";
	MemberDto memberDto = MemberDao.getInstance().getData(id);
	List<CartItemDto> cartList =CartItemDao.getInstance().getList();
	if(id!=null){
		cartList = cartList.stream().filter(c->c.getBuyerId().equals(id)).collect(Collectors.toList());
	}
	int totalPrice = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cart/cart.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<style>
	
</style>
</head>
<body>
	<jsp:include page="/include/navbar.jsp"></jsp:include>
	<div class="container">
        <div class="textArea">
            <h2>장바구니</h2>
            <p><img src="https://img.echosting.cafe24.com/skin/base_ko_KR/order/img_order_step1.gif" alt="" /></p>
        </div>
        <div class="info">
        	<p><%=memberDto.getName() %> 님은, [<%=memberDto.getRank() %>] 회원이십니다</p>
        </div>
        <div class="basket">
            <table class="table-bordered">
                <colgroup>
                    <col style="width:27px">
                    <col style="width:92px">
                    <col style="width:auto">
                    <col style="width:88px">
                    <col style="width:110px">
                    <col style="width:98px"> 
                    <col style="width:110px">
                </colgroup>
                <thead>
                    <tr>
                        <th scope="col">
                            <input type="checkbox" id="checkAll">
                        </th>
                        <th scope="col">이미지</th>
                        <th scope="col">상품정보</th>
                        <th scope="col">수량</th>
                        <th scope="col">상품구매금액</th>
                        <th scope="col">배송비</th>
                        <th scope="col">선택</th>
                    </tr>
                </thead>
                <tbody>
                    <%for(CartItemDto tmp:cartList){ 
                    	ProductDto productDto = ProductDao.getInstance().getData(tmp.getProductId());
                    	ProductOptionDto optionDto = ProductOptionDao.getInstance().getData(tmp.getOptionId());
                    	int price = productDto.getSalesState().equals("on_sale")? productDto.getSalePrice() : productDto.getOrgPrice();
                    	int itemPrice = (price+optionDto.getAdditionalPrice())*tmp.getAmount();
                    	totalPrice += itemPrice;
                    %>
                    
                    <tr>
                    	<td>
                        	<input type="checkbox" class="chk" onclick="check"><!-- 이벤트 -->
                        </td>
                        <td>
                        	<a href="${pageContext.request.contextPath}/product/productDetail?productId=<%=tmp.getProductId()%>"><img src="<%=productDto.getThumbnail()%>" width="100px" height="150px"></a>
                        </td>
                        <td>
                            <ul>
                                <li> <strong><a href="${pageContext.request.contextPath}/product/productDetail?productId=<%=tmp.getProductId()%>"><%=productDto.getTitle() %></a></strong></li>
                                <li>옵션 : <%=optionDto.getDescription() %></li>
                                <li><button id="optBtn">옵션변경</button></li>
                            </ul>
                        </td>
                        <td>
                            <span>
                                <input type="text" value="<%=tmp.getAmount() %>" id="amountId" >
                                <a href="" >
                                    up
                                </a>
                                <a href="" >
                                    down
                                </a>
                            </span>
                            <a href="" onclick="수량결정">변경</a>
                        </td>
                        <td>
                            <strong><%=itemPrice %></strong>
                        </td>
                        <td>
                            <strong><%=itemPrice>50000 ? "무료" : 2500 %></strong>
                        </td>
                        <td>
                            <a href="">주문하기</a>
                            <br />
                            <a href="${pageContext.request.contextPath}/cart/cartDelete.jsp?cartItemId=<%=tmp.getCartItemId()%>">삭제</a>
                        </td>
                    </tr>
                    <%} %>
                </tbody>
            </table>
        </div>
        <div class="total">
        	<h2>총계</h2>
            <table class="table-bordered">
                <thead>
                    <tr>
                        <th>총상품금액</th>
                        <th>총배송비</th>
                        <th>결제예정금액</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%=totalPrice %> </td>
                        <td><%=totalPrice>50000 ? 0 : 2500%></td>
                        <td><%=totalPrice>50000 ? totalPrice : totalPrice+2500%></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="order">
            <a href="">전체상품주문</a>
            <a href="">선택상품주문</a>
        </div>
    </div>
	<script>
	    document.querySelector('#checkAll').addEventListener('click', ()=>{
	        const isChecked = checkAll.checked;
	        if(isChecked){
	            const checkBoxes = document.querySelectorAll('.chk');
	            checkBoxes.forEach((checkBox)=>{
	                checkBox.checked = true;
	            })
	        }else{
	            const checkBoxes = document.querySelectorAll('.chk');
	            checkBoxes.forEach((checkBox)=>{
	                checkBox.checked = false;
	            })
	
	        }
	    })
       function check(checkBox){
       const isChecked = checkBox.checked;
       if(isChecked){
           checkBox.checked=false;
       }else{
           checkBox.checked=true;
       }
		}
   
	</script>
	<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>