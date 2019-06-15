package com.shop.model;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "catalog")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Catalog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
}
