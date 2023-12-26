<%@page import="java.io.BufferedReader"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="util.SendMail"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	try {
	    // 클라이언트로부터의 POST 데이터 읽기
	    BufferedReader reader = request.getReader();
	    StringBuilder requestBody = new StringBuilder();
	    String line;
	    while ((line = reader.readLine()) != null) {
	        requestBody.append(line);
	    }
	
	    // POST 데이터를 JSON 객체로 파싱
	    JsonObject jsonData = new JsonObject(requestBody.toString());
	
	    // 이메일 주소와 인증 코드 가져오기
	    String email = jsonData.getString("email");
	    String emailAuthCode = jsonData.getString("emailAuthCode");
	
	    // SendMail 클래스를 사용하여 이메일 전송
	    SendMail sendMail = new SendMail();
	    String subject = "Email Verification Code";
	    String content = "Your verification code is: " + emailAuthCode;
	    boolean success = sendMail.send(email, subject, content);
	
	    // 클라이언트에 응답 전송
	    JSONObject responseJson = new JSONObject();
	    responseJson.put("success", success);
	    response.getWriter().write(responseJson.toString());
	
	} catch (FileNotFoundException e) {
	    e.printStackTrace();
	} catch (IOException e) {
	    e.printStackTrace();
	}
%>
