package com.wtf4j.webapp.Entity;

import javax.persistence.*;

/**
 * Created by Alx on 2/11/2018.
 */
@Entity
@Table(name = "product")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_id")
    private int Id;
    @Column(name = "product_name")
    private String productName;
    @Column(name = "product_price")
    private int productPrice;
    @Column(name = "product_photo")
    private String productPhoto;
    @Column(name = "product_description")
    private String productDescription;
    @Column(name = "product_category")
    private String productCategory;


    public Product() {
    }

    public Product(String productName, int productPrice, String productPhoto, String productDescription, String productCategory) {
        this.productName = productName;
        this.productPrice = productPrice;
        this.productPhoto = productPhoto;
        this.productDescription = productDescription;
        this.productCategory = productCategory;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductPhoto() {
        return productPhoto;
    }

    public void setProductPhoto(String productPhoto) {
        this.productPhoto = productPhoto;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    @Override
    public String toString() {
        return "Product{" +
                "Id=" + Id +
                ", productName='" + productName + '\'' +
                ", productPrice=" + productPrice +
                ", productPhoto='" + productPhoto + '\'' +
                ", productDescription='" + productDescription + '\'' +
                ", productCategory='" + productCategory + '\'' +
                '}';
    }
}
