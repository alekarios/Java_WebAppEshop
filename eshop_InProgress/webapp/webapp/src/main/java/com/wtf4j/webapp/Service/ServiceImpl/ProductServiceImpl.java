package com.wtf4j.webapp.Service.ServiceImpl;

import com.wtf4j.webapp.Dao.ProductDao;
import com.wtf4j.webapp.Entity.Product;
import com.wtf4j.webapp.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Alx on 2/11/2018.
 */
@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductDao productDao;

    @Override
    @Transactional
    public List<Product> productList() {
       return productDao.findAll();
    }

    @Override
    @Transactional
    public String customQuery() {
        return productDao.customQuery();
    }

    @Override
    public void saveProduct(Product theProduct) {
        productDao.save(theProduct);
    }
}
