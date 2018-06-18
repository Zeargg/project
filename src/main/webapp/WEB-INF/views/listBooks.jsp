<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>
</head>
<body>
<div align="center">
    <h1><a href="/">Books List</a></h1>
    <h2><a href="/add">Add Book</a></h2>
    <form align="right" style="margin-right: 160px" method="post" action="search">
        <input type="text" name="search"/>
        <input type="submit" name="search" value="Search"/>
    </form>

    <table border="1">
        <th width="30">Id</th>
        <th>Title</th>
        <th>Description</th>
        <th>Author</th>
        <th>Isbn</th>
        <th>Print year</th>
        <th>Read already</th>
        <th width="100">Edit</th>

        <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
            <c:choose>
                <c:when test="${page == i.index}">
                    <c:forEach var="book" items="${listBooks}">
                    <tr>
                        <td>${book.id}</td>
                        <td><a href="/read?id=${book.id}">${book.title}</a></td>
                        <td>${book.description}</td>
                        <td>${book.author}</td>
                        <td>${book.isbn}</td>
                        <td>${book.printYear}</td>
                        <td>${book.readAlready}</td>
                        <td>
                            <a href="/edit?id=${book.id}">Edit</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="/remove?id=${book.id}">Delete</a>
                        </td>
                    </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <a href="/?page=${i.index}" style="font-size: 20px">${i.index}&nbsp;</a>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </table>
    <c:if test="${page > 1}">
        <a href="/?page=${page - 1}">Prev</a>
    </c:if>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <c:if test="${page + 1 <= maxPages}">
        <a href="/?page=${page + 1}">Next</a>
    </c:if>
</div>
</body>
</html>