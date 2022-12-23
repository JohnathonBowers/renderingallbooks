package com.johnathonbowers.renderingallbooks.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.johnathonbowers.renderingallbooks.models.Book;
import com.johnathonbowers.renderingallbooks.services.BookService;

@Controller
public class BookController {

	@Autowired
	BookService bookService;
	
	@GetMapping("/books/{bookId}")
	public String index(Model model, @PathVariable("bookId") Long bookId) {
		Book book = bookService.findBook(bookId);
		model.addAttribute("book", book);
		return "show.jsp";
	}
	
	@GetMapping("/books")
	public String getAll(Model model) {
		List<Book> allBooks = bookService.allBooks();
		model.addAttribute("allBooks", allBooks);
		return "index.jsp";
	}
	
	
}