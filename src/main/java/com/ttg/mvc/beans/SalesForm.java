package com.ttg.mvc.beans;

import org.hibernate.validator.constraints.NotEmpty;

public class SalesForm {

    private int userId;
    @NotEmpty(message = "Please enter the number of products")
    private String products;
    @NotEmpty(message = "Please enter the number of orders")
    private String orders;
    @NotEmpty(message = "Please enter the number of customers")
    private String customers;
    @NotEmpty(message = "Please enter the number of amount")
    private String amount;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getProducts() {
        return products;
    }

    public void setProducts(String products) {
        this.products = products;
    }

    public String getOrders() {
        return orders;
    }

    public void setOrders(String orders) {
        this.orders = orders;
    }

    public String getCustomers() {
        return customers;
    }

    public void setCustomers(String customers) {
        this.customers = customers;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

}
