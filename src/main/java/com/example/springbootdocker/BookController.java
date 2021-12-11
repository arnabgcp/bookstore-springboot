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





@RequestMapping("/showupdateform")
    public String showReadBookPage(Model model) {
        model.addAttribute("books", bookService.getAllBooks());
        return "readbook";
    }


 @RequestMapping(value = "/updatebook/{book_id}")
    public String showUpdateBookPage(@PathVariable int book_id, Model model) {
        model.addAttribute("book_id", book_id);	
        model.addAttribute("command", bookService.getBooksById(book_id));
	model.addAttribute("book", bookService.getBooksById(book_id));
        return "updatebook";
    }

    @RequestMapping(value = "/updatebook/{book_id}", method = RequestMethod.POST)
    public String updateBook(@PathVariable int book_id, @ModelAttribute("book") Book book) {
        bookService.update(book, book_id);
        return "redirect:/listallbooks";
    }
}
