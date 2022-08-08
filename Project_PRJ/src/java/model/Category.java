/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nguyen Phuc
 */
public class Category {
    private int cid;
    private String cname;
    private String images;

    public Category() {
    }

    public Category(String cname, String images) {
        this.cname = cname;
        this.images = images;
    }

    public Category(int cid, String cname, String images) {
        this.cid = cid;
        this.cname = cname;
        this.images = images;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    
    
}
