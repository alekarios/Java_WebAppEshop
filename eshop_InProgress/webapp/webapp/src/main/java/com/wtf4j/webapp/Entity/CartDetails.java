package com.wtf4j.webapp.Entity;

import javax.persistence.*;

/**
 * Created by Alx on 2/20/2018.
 */
@Entity
@Table(name = "cart_details")
public class CartDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @ManyToOne
    @JoinColumn(name = "cart_id")
    private Cart cart;

    public CartDetails() {

    }

    public CartDetails(Cart cart) {
        this.cart = cart;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

}
