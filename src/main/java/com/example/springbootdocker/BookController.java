package com.example.springbootdocker;  
import java.util.List;  


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMethod;
//mark class as Controller  
@Controller  
public class BookController   
{  
//autowire the BooksService class  
@Autowired  
BookService bookService;  





@RequestMapping("/listallbooks")
    public String showReadBookPage(Model model) {
        model.addAttribute("books", bookService.getAllBooks());
        return "showbooks";
    }

}
