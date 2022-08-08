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
public class OrderDetail {
    private int id;
    private int orderId;
    private String productName;
    private String productImage;
    private double productPrice;
    private int quantity;

    public OrderDetail() {
    }

    public OrderDetail(int id, int orderId, String productName, String productImage, double productPrice, int quantity) {
        this.id = id;
        this.orderId = orderId;
        this.productName = productName;
        this.productImage = productImage;
        this.productPrice = productPrice;
        this.quantity = quantity;
    }
    
}
