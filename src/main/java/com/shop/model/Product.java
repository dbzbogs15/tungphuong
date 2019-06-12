package com.shop.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "product")
@Data
public class Product {
    @Id
    private Integer id;
    private String name;
    private Integer price;
    @Column(name = "catalog_id")
    private Integer catalogId;
    @Column(name = "brand_id")
    private Integer brandId;
    private String image;
    private String preview;
    private Date created;
}
