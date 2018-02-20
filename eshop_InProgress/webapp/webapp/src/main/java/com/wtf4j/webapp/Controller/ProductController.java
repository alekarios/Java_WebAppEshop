package com.wtf4j.webapp.Controller;

import com.wtf4j.webapp.Entity.Product;
import com.wtf4j.webapp.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Alx on 2/11/2018.
 */
@Controller
public class ProductController {
    @Autowired
    ProductService productService;

    @RequestMapping("/")
    public String home() {
        return "redirect:/eshop/homepage";
    }

//    @RequestMapping("/test")
//    public String test() {
//        Product product = new Product("TestProduct", 1000, null, null, null);
//        List<Product> list = productService.productList();
//        System.out.println(list.toString());
//
//        String customQuery = productService.customQuery();
//        System.out.println(customQuery);
//
//        return "test";
//
//    }

    @RequestMapping(path = "/productlist")
    public String productList() {
        List<Product> theProductList = productService.productList();
        System.out.println(theProductList.toString());
        return "product-list";
    }

    @RequestMapping(path = "/addproduct")
    public String newProduct() {
        Product theProduct = new Product("TestProduct", 2000, null, null, null);
        productService.saveProduct(theProduct);
        return null;
    }

}
