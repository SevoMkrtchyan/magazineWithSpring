package com.example.magazine.repository;

import com.example.magazine.model.Category;
import com.example.magazine.model.Picture;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PictureRepository extends JpaRepository<Picture, Integer> {


}
