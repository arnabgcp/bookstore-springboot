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



@RequestMapping("/addnewbook")
    public String showCreateBookPage(Model model) {
        model.addAttribute("command", new Book());
        return "createbook";
    }

    @RequestMapping(value = "/addnewbook", method = RequestMethod.POST)
    public String createBook(@ModelAttribute("book") Book book) {
        bookService.saveOrUpdate(book);


        return "redirect:/listallbooks";
    }



}
    
