<%@page import="com.apress.chapter03.model.Book"%>
<%@page import="com.apress.chapter03.model.Author"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<html>
<head>
</head>
<body>
<table border="1">
<tr>
<th width= "20px">Description</th>
<th >code</th>
<th >output</th>
</tr>
<%
Book book = (Book) request.getAttribute("bookAttrib");
Author author = book.getAuthor();
%>
<tr>
<td>Author's Name using <b>Scriptlet and Expression</b>
</td>
<td>${fn:escapeXml("<%= author.getName() %>")}</td>
<td><%=author.getName()%></td>
</tr>

<jsp:useBean id="bookAttrib" class="com.apress.chapter03.model.Book"
scope="request" />
<tr>
<td>Author's Name using <b> jsp:getProperty action </b>
</td>
<td>
<table border="1">
<tr>
<td>${fn:escapeXml("<jsp:getProperty name = \"bookAttrib \" property= uthor \" />")}</td>
</tr>
<tr>
<td>${fn:escapeXml("<jsp:getProperty name = \"bookAttrib \" property= uthor.name \" />")}</td>
</tr>
</table>

</td>
<td>
<table border="1">
<tr>
<td><jsp:getProperty name="bookAttrib" property="author" />
</td>
</tr>
<tr>
<td>
<%--  <jsp:getProperty name ="bookId" property="author.name" />  - this e will yield run time exception --%>
Not possible
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>Author's Name using<b> EL </b></td>
<td>${fn:escapeXml("${bookAttrib.author.name}")}</td>
<td>${bookAttrib.author.name}</td>
</tr>
</table>
</body>
</html>