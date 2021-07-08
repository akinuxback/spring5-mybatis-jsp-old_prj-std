<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Test Page</h1>


<form method="POST" action="/test/test">
	 <br>이름 : <input name="name" type="text" value="">
	<spring:hasBindErrors name="userVO">
		<c:if test="${errors.hasFieldErrors('name') }">                                     
			<strong>${errors.getFieldError( 'name' ).defaultMessage }</strong>
    	</c:if>
	</spring:hasBindErrors>
	
	<br>아이디 : <input name="userid" type="text" value="">
	<spring:hasBindErrors name="userVO">
		<c:if test="${errors.hasFieldErrors('userid') }">                                     
			<strong>${errors.getFieldError( 'userid' ).defaultMessage }</strong>
	   	</c:if>
	</spring:hasBindErrors>
	
		
	 <br>비밀번호 : <input name="password" type="password" value="">
	<spring:hasBindErrors name="userVO">
		<c:if test="${errors.hasFieldErrors('password') }">                                     
			<strong>${errors.getFieldError( 'password' ).defaultMessage }</strong>
    	</c:if>
	</spring:hasBindErrors>
	
	
	 <br>이메일 : <input id="email" name="email" type="text" value="">
	<spring:hasBindErrors name="userVO">
		<c:if test="${errors.hasFieldErrors('email') }">                                     
			<strong>${errors.getFieldError( 'email' ).defaultMessage }</strong>
    	</c:if>
	</spring:hasBindErrors>
		
	
	<fieldset>
    	<legend>성별</legend>
		<label>여</label> <input type="radio" name="gender" value="female" checked="checked">
		<label>남</label> <input type="radio" name="gender" value="male">
	</fieldset>

	<input type="submit" value="가입하기">
</form>


</body>
</html>