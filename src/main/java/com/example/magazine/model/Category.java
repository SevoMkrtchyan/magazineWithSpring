package com.example.magazine.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Cascade;

import javax.persistence.*;
import java.util.LinkedList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "category")
public class Category {
    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column
    private String name;
    @ManyToMany(cascade = CascadeType.MERGE)
    @JoinTable(
            name = "category_pictures",
            joinColumns = {@JoinColumn(name = "category_id")},
            inverseJoinColumns = {@JoinColumn(name = "picture_id")})
    private List<Picture> pictures = new LinkedList<>();
}
