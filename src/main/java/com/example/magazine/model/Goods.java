package com.example.magazine.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.LinkedList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "goods")
public class Goods {

    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column
    private String name;
    @Column
    private String description;
    @Column
    private double price;

    @ManyToMany(cascade = CascadeType.MERGE)
    @JoinTable(
            name = "goods_categories",
            joinColumns = {@JoinColumn(name = "goods_id")},
            inverseJoinColumns = {@JoinColumn(name = "category_id")})
    private List<Category> categories = new LinkedList<>();
    @ManyToMany(cascade = CascadeType.MERGE)
    @JoinTable(
            name = "goods_pictures",
            joinColumns = {@JoinColumn(name = "goods_id")},
            inverseJoinColumns = {@JoinColumn(name = "picture_id")})
    private List<Picture> pictures = new LinkedList<>();


}
