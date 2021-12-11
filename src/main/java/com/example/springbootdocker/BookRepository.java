package com.example.springbootdocker; 
import org.springframework.data.repository.CrudRepository;  
  
//repository that extends CrudRepository  
public interface BookRepository extends CrudRepository<Book, Integer>  
{  
}  
