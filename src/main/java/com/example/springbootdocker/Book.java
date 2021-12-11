package com.example.springbootdocker;

import javax.persistence.*;  
 
//mark class as an Entity   
@Entity  
//defining class name as Table name  
@Table  
public class Book 
{  
//Defining book id as primary key  
@Id  
@Column  
private int book_id;  
@Column  
private String title;  
@Column  
private String author;  
@Column  
private float price;  
public int getBook_id()   
{  
return book_id;  
}  
public void setBook_id(int book_id)   
{  
this.book_id = book_id;  
}  
public String getTitle()  
{  
return title;  
}  
public void setTitle(String title)   
{  
this.title = title;  
}  
public String getAuthor()   
{  
return author;  
}  
public void setAuthor(String author)   
{  
this.author = author;  
}  
public float getPrice()   
{  
return price;  
}  
public void setPrice(float price)   
{  
this.price = price;  
}  
} 
