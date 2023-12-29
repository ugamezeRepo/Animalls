<%@page import="util.IntegerUtil"%>
<%@page import="util.MultipartParser"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dto.ReviewDto"%>
<%@page import="dao.ReviewDao"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	MultipartParser mp = new MultipartParser(request);

	int reviewStar = IntegerUtil.parseIntWithDefaultValue(mp.getFormDataValueByAttribute("name", "reviewStar"), 1);
	String imageData = mp.getFormDataValueByAttribute("name", "image_data");
	String content = mp.getFormDataValueByAttribute("name", "content");
%>
{
	"reviewStar": <%= reviewStar %>, 
	"imageData": "<%= imageData %>", 
	"content": "<%= content %>"
}