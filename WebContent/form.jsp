<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<body>
<c:set var="testvar" value="hello var" scope="session" />

<form action="result.jsp" method="post">
<input type="hidden" name="action" value="books"/>
<p>Book Title: <input type="text" name="bookTitle"></p>
<p>Author 1 Name: <input type="text" name="authorName"></p>
<p>Author 2 Name: <input type="text" name="authorName"></p>

<input type = "submit"/>
</form>
</body>