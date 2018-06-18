package net.project.dao;

import net.project.model.Book;

import java.util.List;

public interface BookDao {

    Book findByID(int id);
    void save(Book book);
    void update(Book book);
    void delete(int id);
    List<Book> listBooks();
    List<Book> searchBooks(String search);

}
