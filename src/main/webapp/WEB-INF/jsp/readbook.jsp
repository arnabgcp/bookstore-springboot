<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Books Management Application Demo - Running on Google Kubernetes Engine</title>
	<link href="./css/styles.css" rel="stylesheet" type="text/css">
</head>
<body>

<nav role="navigation">
  <div id="menuToggle">
    <!--
    A fake / hidden checkbox is used as click reciever,
    so you can use the :checked selector on it.
    -->
    <input type="checkbox" />
    
    <span></span>
    
    <span></span>
    <span></span>
    
    <!--
    Too bad the menu has to be inside of the button
    but hey, its pure CSS magic.
    -->
    <ul id="menu">
      <a href="/addnewbook"><li>Add New Book</li></a>
      <a href="/listallbooks"><li>List All Books</li></a>
      <a href="/showupdateform"><li>Update/Delete Books</li></a>
      <a href="/"><li>Sign Out</li></a>
      <a href="mailto:karthick.pakkiriswamy@cogniant.com"><li>Report Issues</li></a>
     </ul>
  </div>
</nav>

<div class="content">
Books Management Application Demo - Running on Google Kubernetes Engine
</div>

 <div class="content2">
                <h3>
                Use this form to update details for existing books in stock:
                </h3>
</div>
	
    <div align="center" class="content1">
        <table border="1" cellpadding="5" id="bookstore">
            <tr>
                <th width=50>Book ID</th>
                <th width=80>Title</th>
                <th width=60>Author</th>
                <th width=50>Price (USD)</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="book" items="${books}">
		   <tr>
                    <td align="center"><c:out value="${book.book_id}" /></td>
                    <td><c:out value="${book.title}" /></td>
                    <td><c:out value="${book.author}" /></td>
                    <td align="right"><c:out value="${book.price}" /></td>
                    <td>
                    	<a href="updatebook/<c:out value='${book.book_id}' />">Edit</a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a onclick="return confirm('Are you sure want to delete this book from the stock?')" href="deletebook/<c:out value='${book.book_id}' />">Delete</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
