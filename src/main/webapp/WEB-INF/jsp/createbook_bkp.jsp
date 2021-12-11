<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Add Book</h1>
<form:form method="post" action="/addBook">
    <table>
        <tr>
            <td>Title: </td>
            <td><form:input path="title"/></td>
        </tr>
        <tr>
            <td>Author: </td>
            <td><form:input path="author"/></td>
        </tr>
        <tr>
            <td>Price: </td>
            <td><form:input path="price"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Create"/></td>
        </tr>
    </table>
</form:form>
