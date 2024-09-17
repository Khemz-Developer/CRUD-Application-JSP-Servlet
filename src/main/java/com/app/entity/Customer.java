package com.app.entity;



import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Id;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
public class Customer {

    @Id

    private long id;
    private String name;
    private String address;
    private double salary;
}
