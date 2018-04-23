package com.example.magazine.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column
    @NotNull(message = "Name Can Not Be Null")
    private String name;
    @Column
    @NotNull(message = "Surname Can Not Be Null")
    private String surname;
    @Column
    @NotNull(message = "Email Can Not Be Null")
    private String email;
    @Column
    @NotNull(message = "Password Can Not Be Null")
    private String password;
    @Column(name = "pic_url")
    private String picUrl;
    @Enumerated(EnumType.STRING)
    @Column(name = "user_type")
    private UserType userType;
    @Column
    private boolean verify;
    @Column(name = "rec_code")
    private String recCode;
    @Column(name = "rec_code_date")
    private Date recCodeDate;
    @ManyToMany(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    @JoinTable(
            name = "wish",
            joinColumns = {@JoinColumn(name = "user_id")},
            inverseJoinColumns = {@JoinColumn(name = "goods_id")})
    private List<Goods> products = new LinkedList<>();

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", picUrl='" + picUrl + '\'' +
                ", userType=" + userType +
                '}';
    }
}
