<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dto.ReviewDto"%>
<%@page import="dao.ReviewDao"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	String boundary = request.getContentType().split("boundary=")[1];

	String input = new String(request.getInputStream().readAllBytes());

	String[] data = input.split("--" + boundary);
	
	Map<String, String> map = new HashMap<>();
	 
	for (String s : data) {
		if (s.length() == 0) {
			continue; 
		}
		s = s.strip();
		String[] kv = s.split("\r\n\r\n");
		if (kv.length > 0 &&  kv[0].startsWith("Content-Disposition") ) {
			String name = kv[0].split("name=")[1];
			name = name.substring(1, name.length() - 1);
			map.put(name, kv[1]);
		}
	}
	for (String key : map.keySet()) {
		System.out.println("k = " + key + ", value = " + map.get(key));
	}
	
	int reviewStar = Integer.parseInt(map.get("reviewStar"));
	String imageData = map.get("image_data");
	String content = map.get("content");
%>
{
	"reviewStar": <%= reviewStar %>, 
	"imageData": "<%= imageData %>", 
	"content": "<%= content %>"
}