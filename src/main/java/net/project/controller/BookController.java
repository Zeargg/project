package net.project.controller;


import net.project.dao.BookDao;
import net.project.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
public class BookController {

    @Autowired
    private BookDao bookDao;

    @RequestMapping("/")
    public ModelAndView listBooks(@RequestParam(required = false)Integer page) {
        List<Book> listBooks = bookDao.listBooks();
        PagedListHolder<Book> pagedListHolder = new PagedListHolder<Book>(listBooks);
        pagedListHolder.setPageSize(10);
        ModelAndView model = new ModelAndView("listBooks");
        model.addObject("maxPages", pagedListHolder.getPageCount());
        if (page == null || page < 1 || page > pagedListHolder.getPageCount())
            page = 1;
        model.addObject("page", page);
        pagedListHolder.setPage(page - 1);
        model.addObject("listBooks", pagedListHolder.getPageList());
        return model;
    }


    @RequestMapping(value = "/add")
    public ModelAndView addBook(){
        Book book = new Book();
        ModelAndView model = new ModelAndView("bookFormNew");
        model.addObject("book", book);
        return model;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView saveBook(@ModelAttribute Book book){
        bookDao.save(book);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/remove")
    public ModelAndView removeBook(HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        this.bookDao.delete(id);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/edit")
    public ModelAndView editBook(HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        Book book = bookDao.findByID(id);
        ModelAndView model = new ModelAndView("bookFormUpdate");
        model.addObject("book", book);
        return model;
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView updateBook(@ModelAttribute Book book){
        bookDao.update(book);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/read")
    public ModelAndView readBook(HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        Book book = bookDao.findByID(id);
        book.setReadAlready(true);
        bookDao.update(book);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public ModelAndView searchBooks(@RequestParam (defaultValue = "") String search){
        List<Book> listBooks = bookDao.searchBooks(search);
        int page = 1;
        ModelAndView model = new ModelAndView("listBooks");
        model.addObject("maxPages", 1);
        model.addObject("page", page);
        model.addObject("listBooks", listBooks);
        return model;
    }
}
