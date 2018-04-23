package com.example.magazine.repository;

import com.example.magazine.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category, Integer> {

    Category findAllByNameContains(String name);

    List<Category> findAllCategoriesByNameContains(String name);
}
