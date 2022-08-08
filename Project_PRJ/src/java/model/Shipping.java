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
public class Shipping {
    private int id;
    private String name;
    private String phone;
    private String address;

    public Shipping() {
    }

    public Shipping(int id, String name, String phone, String address) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.address = address;
    }
    
}
