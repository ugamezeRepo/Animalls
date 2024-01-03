<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="util.IntegerUtil"%>
<%@page import="dao.ProductDao"%>
<%@page import="dto.ProductDto"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String filename="";
	String realFolder="C:\\upload";		//웹애플리케이션상의 절대 경로
	int maxSize = 5* 1024* 1024;	//최대 업로드 파일의 크기 5MG
	String encType = "utf-8";	//인코딩 유형
	
	MultipartRequest multi = new MultipartRequest(request, realFolder,
		maxSize, encType, new DefaultFileRenamePolicy());
	
	request.setCharacterEncoding("utf-8");

	String thumbnail=request.getParameter("thumbnail");
	String sellerId=request.getParameter("sellerId");
	String title=request.getParameter("title");
	String category=request.getParameter("category");
	
	int orgPrice=IntegerUtil.parseIntWithDefaultValue(request.getParameter("org_price"), 0);
	
	int salePrice=IntegerUtil.parseIntWithDefaultValue(request.getParameter("sale_price"), 0);
	
	String salesState=request.getParameter("sales_state");
	String description=request.getParameter("description");
	
	ProductDto dto=new ProductDto();
	dto.setThumbnail(thumbnail);
	dto.setSellerId(sellerId);
	dto.setTitle(title);
	dto.setCategory(category);
	dto.setOrgPrice(orgPrice);
	dto.setSalePrice(salePrice);
	dto.setSalesState(salesState);
	dto.setDescription(description);
	
	boolean isSuccess=ProductDao.getInstance().insert(dto);
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/seller/productUpload.jsp</title>
<link rel="stylesheet" href="/Animalls/css/common.css" />
<link rel="stylesheet" href="/Animalls/css/bootstrap.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous">
</script>
</head>
<body class="d-flex flex-column">
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="seller" name="current"/>
	</jsp:include>
	
	
	<div class="container d-flex flex-grow-1">
        <!--  sidebar start -->
        <div id="side-bar" class="flex-shrink-0 p-3 bg-white" style="width: 200px;">
            <a href="#" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
                <span class="fs-5 fw-semibold">상세메뉴</span>
            </a>
            <ul class="list-unstyled ps-0">
                <li class="mb-1">
                    <div class="align-items-center fw-bold" >
                        상품 관리
                    </div>
                    <div>
                        <ul class="list-unstyled fw-normal pb-1 small">
                            <li><a href="/Animalls/seller/productList.jsp" class="text-decoration-none link-dark rounded">상품 DB</a></li>
                        </ul>
                    </div>
                </li>
                <li class="mb-1">
                    <div class="align-items-center fw-bold" >
                        주문 배송
                    </div>
                    <div>
                        <ul class="list-unstyled fw-normal pb-1 small">
                            <li><a href="/Animalls/seller/productOrderList.jsp" class="text-decoration-none link-dark rounded">주문 관리</a></li>
                            <li><a href="/Animalls/seller/productDeliveryList.jsp" class="text-decoration-none link-dark rounded">배송 확인</a></li>
                        </ul>
                    </div>
                </li>
                <li class="mb-1">
                    <div class="align-items-center fw-bold" >
                        고객 관리
                    </div>
                    <div>
                        <ul class="list-unstyled fw-normal pb-1 small">
                            <li><a href="/Animalls/review/customerReview.jsp" class="text-decoration-none link-dark rounded">리뷰 관리</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
        <!--  end of sidebar -->
        
        <div class="vr my-2"></div>
        
		<div class="ms-4 flex-grow-1">
			<h1>알림</h1>
			<%if(isSuccess){%>
				<p>
					<strong><%=sellerId %></strong> 님의 판매 상품이 등록되었습니다.
					<a href="productList.jsp">판매 목록보기</a>
				</p>
			<%}else{%>
				<p>
					등록에 실패하였습니다. 다시 등록해주세요.
					<a href="productUpload_form.jsp">다시 작성하기</a>
				</p>
			<%}%>
			<!-- 상품을 올리는 페이지입니다 -->	
		
		</div>
	
	</div>
	
	
	<jsp:include page="/include/footer.jsp">
		<jsp:param value="seller" name="current"/>
	</jsp:include>
</body>
</html>