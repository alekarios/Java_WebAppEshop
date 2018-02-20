package com.wtf4j.webapp.Service;

import com.wtf4j.webapp.Entity.Product;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Alx on 2/11/2018.
 */

public interface ProductService {
    public List<Product> productList();

    public String customQuery();

    public void saveProduct(Product theProduct);
}
