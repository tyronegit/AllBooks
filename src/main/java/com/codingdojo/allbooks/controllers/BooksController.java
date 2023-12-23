package com.codingdojo.allbooks.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.codingdojo.allbooks.models.Book;
import com.codingdojo.allbooks.services.BookService;

@Controller
public class BooksController {
	
	@Autowired
	BookService bookService; // Does dependency injection automatically saving lines of code
		
	@GetMapping("/")
	public String home() {
		return "redirect:/books";
	}
	
	@GetMapping("/books")
	public String index(Model model) {
		
		List<Book> books = bookService.allBooks();
		model.addAttribute("books", books);
		return "index.jsp";
	}
	
	@GetMapping("/books/{bookId}")
	public String show(Model model, @PathVariable("bookId")Long bookId) {
		
		model.addAttribute("book", bookService.findBook(bookId));
		
		return "show.jsp";
	}

}
