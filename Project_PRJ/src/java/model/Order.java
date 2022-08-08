/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author Nguyen Phuc
 */
@Builder
@Getter
@Setter
@ToString
public class Order {
    private int id,accountId;
    private double totalPrice;
    private String createDate;
    private int shippingId;

    public Order() {
    }

    public Order(int id, int accountId, double totalPrice, String createDate, int shippingId) {
        this.id = id;
        this.accountId = accountId;
        this.totalPrice = totalPrice;
        this.createDate = createDate;
        this.shippingId = shippingId;
    }

    

}
