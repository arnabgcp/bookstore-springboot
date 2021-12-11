package com.example.springbootdocker;  

import java.util.ArrayList;  
import java.util.List;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Service;  
 
//defining the business logic  
@Service  
public class BookService   
{  
@Autowired  
BookRepository bookRepository;  


public Book getBooksById(int id)   
{  
return bookRepository.findById(id).get();  
}  



public List<Book> getAllBooks()   
{  
List<Book> books = new ArrayList<Book>();  
bookRepository.findAll().forEach(book1 -> books.add(book1));  
return books;  
}  



public void saveOrUpdate(Book book)
{
bookRepository.save(book);


}

public void update(Book book, int book_id)   
{  
bookRepository.save(book);  
} 


}  
