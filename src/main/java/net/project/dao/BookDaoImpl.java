package net.project.dao;

import net.project.model.Book;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import javax.transaction.Transactional;

import java.util.List;

@Repository
public class BookDaoImpl implements BookDao{

    @Autowired
    private SessionFactory sessionFactory;

    public BookDaoImpl(){}

    public BookDaoImpl(SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @Transactional
    public Book findByID(int id){
        Session session = sessionFactory.getCurrentSession();
        return (Book) session.get(Book.class, id);
    }

    @Override
    @Transactional
    public void save(Book book){
        Session session = sessionFactory.getCurrentSession();
        session.persist(book);
    }

    @Override
    @Transactional
    public void update(Book book){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(book);
    }

    @Override
    @Transactional
    public void delete(int id){
        Session session = sessionFactory.getCurrentSession();
        Book book = (Book) session.get(Book.class, id);
        if (book != null)
            session.delete(book);
    }

    @Override
    @Transactional
    @SuppressWarnings("unchecked")
    public List<Book> listBooks(){
        Session session = sessionFactory.getCurrentSession();
        List<Book> listBooks = session.createQuery("FROM Book").list();
        return listBooks;
    }

    @Override
    @Transactional
    @SuppressWarnings("unchecked")
    public List<Book> searchBooks(String search){
        Session session = sessionFactory.getCurrentSession();
        org.hibernate.Query query = session.createQuery("FROM Book WHERE title = :param");
        search = search.substring(0, search.length() - 7);
        query.setParameter("param", search);
        return query.list();
    }

}
