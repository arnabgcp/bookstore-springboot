function checkfields()
{
	var title = document.forms["bookform"]["title"].value;
	if (title == "")
	{
	document.getElementById("title").focus();
	alert("Book title field cannot be blank");
	return false;
	}
	var author = document.forms["bookform"]["author"].value;
	if (author == "")
	{
	alert("Book author field cannot be blank");
	document.getElementById("author").focus();
	return false;
	}
	var price = document.forms["bookform"]["price"].value;
	if (price == "")
	{
	alert("Price cannot be blank");
	document.getElementById("price").focus();
	return false;
	}
	if (isNaN(price)) 
	{
	alert("Price has to be a numeric value with decimal points");
	return false;
	}
	
	if (price == 0)
	{
	alert("Book price cannot be 0");
	return false;
	}	
	return confirm('Are you sure want to save this book details: ' + title + '?')
}