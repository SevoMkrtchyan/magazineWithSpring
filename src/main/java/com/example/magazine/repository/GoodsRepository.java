package com.example.magazine.repository;

import com.example.magazine.model.Category;
import com.example.magazine.model.Goods;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GoodsRepository extends JpaRepository<Goods, Integer> {

    List<Goods> findAllByCategories(Category category);


    Goods findAllByNameContains(String name);

    List<Goods> findAllGoodsByNameContains(String name);
}
