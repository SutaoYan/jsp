<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:out value="value" />

<c:out value="value">
default value
</c:out>

<c:set var="number" value="9"/>
<c:if test="${ number < 10}" >
<c:out value ="number is less than 10"/>
</c:if>

<c:forTokens items="Clojure,Groovy,Java, Scala" delims="," var="lang">
<c:out value="${lang}"/><p>
</c:forTokens>

</body>
</html>