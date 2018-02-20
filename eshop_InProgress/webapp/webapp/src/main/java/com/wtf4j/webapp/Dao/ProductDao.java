package com.wtf4j.webapp.Dao;

import com.wtf4j.webapp.Entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Alx on 2/11/2018.
 */
@Repository
public interface ProductDao extends JpaRepository<Product, Integer>, ProductDaoCustom {

}
