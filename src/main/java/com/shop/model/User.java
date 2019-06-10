package com.shop.model;

import lombok.*;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table
@Data
public class User {
    @Id
    private String email;
    private String password;
    private String name;
    private String address;
    private Date created;
    private String phone;
    private boolean gender;
}
