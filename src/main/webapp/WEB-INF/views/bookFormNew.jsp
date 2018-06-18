<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Book</title>
</head>
<body>
<div align="center">
    <h1>Add Book</h1>
    <table>
        <form:form action="save" method="post" modelAttribute="book">
            <form:hidden path="id"/>
            <tr>
                <td>Title:</td>
                <td><form:input path="title"/></td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><form:input path="description"/></td>
            </tr>
            <tr>
                <td>Author:</td>
                <td><form:input path="author"/></td>
            </tr>
            <tr>
                <td>Isbn:</td>
                <td><form:input path="isbn"/></td>
            </tr>
            <tr>
                <td>Print year:</td>
                <td><form:input path="printYear"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save">
                </td>
            </tr>
        </form:form>
    </table>
</div>

</body>
</html>