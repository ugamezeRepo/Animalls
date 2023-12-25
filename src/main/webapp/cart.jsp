<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cart.jsp</title>
</head>
<body>
	<div class="container">
        <div class="textArea">
            <h2>장바구니</h2>
        </div>
        <div class="basket">
            <table>
                <caption>일반상품</caption>
                <colgroup>
                    <col style="width:27px">
                    <col style="width:92px">
                    <col style="width:auto">
                    <col style="width:88px">
                    <col style="width:110px">
                    <col style="width:88px">
                    <col style="width:88px">
                    <col style="width:85px">
                    <col style="width:98px">
                    <col style="width:110px">
                </colgroup>
                <thead>
                    <tr>
                        <th scope="">
                            <input type="checkbox" onclick="장바구니 전체 추가">
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
                    <tr>
                        <td>
                        	<input type="checkbox" onclick="장바구니 추가" name="" id="">
                        </td>
                        <td>
                        	<a href="제품 링크"><img src="제품썸네일"></a>
                        </td>
                        <td>
                            <ul>
                                <li> <strong><a href="제품링크">제품명</a></strong></li>
                                <li>옵션 : 옵션명</li>
                                <li><a href="옵션창">옵션변경</a></li>
                            </ul>
                        </td>
                        <td>
                            <span>
                                <input type="text">
                                <a href="스크립트" onclick=수량증가>
                                    <img src="수량 업">
                                </a>
                                <a href=",," onclick="수량감소">
                                    <img src="수량 다운">
                                </a>
                            </span>
                            <a href="">변경</a>
                        </td>
                        <td>
                            <strong>총가격(옵션, 수량반영)</strong>
                        </td>
                        <td>
                            <strong>배송비</strong>
                        </td>
                        <td>
                            <a href="">주문하기</a>
                            <a href="">삭제</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="total">
            <table>
                <caption>총계</caption>
                <thead>
                    <tr>
                        <th>총상품금액</th>
                        <th>총배송비</th>
                        <th>결제예정금액</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>상품가격 total </td>
                        <td>배송비 total</td>
                        <td>총상품금액+총배송비</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="order">
            <a href="" onclick="">전체상품주문</a>
            <a href="" onclick="">선택상품주문</a>
        </div>
    </div>
</body>
</html>