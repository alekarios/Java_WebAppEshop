package com.wtf4j.webapp.Entity;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

/**
 * Created by Alx on 2/20/2018.
 */
@Entity
@Table(name = "cart")
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cart_id")
    private int id;
    @OneToOne(mappedBy = "cart", cascade = CascadeType.ALL)
    private User user;
    @OneToMany(mappedBy = "cart")
    private List<CartDetails> items;

    public Cart() {

    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<CartDetails> getItems() {
        return items;
    }

    public void setItems(List<CartDetails> items) {
        this.items = items;
    }
}
