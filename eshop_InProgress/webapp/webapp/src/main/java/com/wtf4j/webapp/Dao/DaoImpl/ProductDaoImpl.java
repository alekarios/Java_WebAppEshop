package com.wtf4j.webapp.Dao.DaoImpl;

import com.wtf4j.webapp.Dao.ProductDaoCustom;
import com.wtf4j.webapp.Entity.Product;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by Alx on 2/11/2018.
 */
@Repository
//@Transactional
public class ProductDaoImpl implements ProductDaoCustom {
    @PersistenceContext
    EntityManager em;


    @Override
    public String customQuery() {
        Query query = em.createNativeQuery("select * FROM product", Product.class);

        List<Product> list;
        try{
            list = query.getResultList();
            return list.toString();
        } catch (RuntimeException exc){
            exc.printStackTrace();
        }
        return "Couildnt do it";
    }
}