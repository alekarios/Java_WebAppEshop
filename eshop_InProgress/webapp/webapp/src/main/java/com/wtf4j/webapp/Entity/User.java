package com.wtf4j.webapp.Entity;

import javax.persistence.*;

@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "flag")
    private int flag;

    @Column(name = "username")
    private String username;

    @Column(name = "password")
    private String password;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "users_detail_id")
    private UsersDetail usersDetail;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "cart_id")
    private Cart cart;

    public User() {

    }

    public User(int flag, String username, String password) {
        this.flag = flag;
        this.username = username;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getFlag() {
        return flag;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UsersDetail getUsersDetail() {
        return usersDetail;
    }

    public void setUsersDetail(UsersDetail usersDetail) {
        this.usersDetail = usersDetail;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", flag=" + flag +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", usersDetail=" + usersDetail +
                '}';
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }
}
