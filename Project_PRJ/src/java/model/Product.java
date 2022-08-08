/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author Nguyen Phuc
 */
@Builder
@Getter
@Setter
public class Product {
    private int id;
    private String name,image;
    private double price;
    private String title;
    private String description;
    private Category category;

    public Product() {
    }

    public Product(int id, String name, String image, double price, String title, String description, Category category) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;
        this.category = category;
    }

    public Product(int id, String name, String image, double price, String title, String description) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;
    }

    public Product(String name, String image, double price, String title, String description) {
        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;
    }

    


}
