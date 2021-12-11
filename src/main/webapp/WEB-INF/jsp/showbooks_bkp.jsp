<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Read Contacts</h1>
    <table border="2" width="70%" cellpadding="2">
        <tr>
            <th>Book Id</th>
            <th>Book Title</th>
            <th>Book Author</th>
            <th>Book Price</th>
        </tr>
        <c:forEach var="book" items="${books}">
            <tr>
                <td>${book.book_id}</td>
                <td>${book.title}</td>
                <td>${book.author}</td>
                <td>${book.price}</td>
            </tr>
        </c:forEach>
    </table>
<br/>
