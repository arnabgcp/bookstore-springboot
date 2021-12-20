<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Books Management Application Demo - Running on Google Kubernetes Engine</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/css/styles.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="/js/validation.js"></script>
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
      <a href="mailto:karthick.pakkiriswamy@cognizant.com"><li>Report Issues</li></a>
     </ul>
  </div>
</nav>

<div class="content">
Books Management Application Demo - Running on Google Kubernetes Engine
</div>

 <div class="content2">
                <h3> Use this form to add new book to stock : </h3>
</div>

        <div align="center" class="content1">
	<form name="bookform" action="/addnewbook" method="post">
        <table border="1" cellpadding="5" id="bookstore">
            <tr>
                <th>Title: <font color="red">*</font></th>
                <td>
			<input type="text" name="title" size="60" id="title" value="<c:out value='${book.title}' />"
		</td>
            </tr>
            <tr>
                <th>Author: <font color="red">*</font></th>
                <td>
			<input type="text" name="author" size="60" id="author" value="<c:out value='${book.author}' />"
                </td>
            </tr>
            <tr>
                <th>Price (in USD): <font color="red">*</font></th>
                <td>
			<input type="text" name="price" size="6" id="price" value="<c:out value='${book.price}' />"
                                />
                </td>
            </tr>
            <tr>
            	<td colspan="2" align="center">
            		<input type="submit" value="Save" onclick="return checkfields()" />
            	</td>
            </tr>
            <tr>
            	<td colspan="2" align="left">
            		<font color="red">*</font> Mandatory Fields
            	</td>
            </tr>
        </table>
        </form>
    	</div>	
   
</body>
</html>
