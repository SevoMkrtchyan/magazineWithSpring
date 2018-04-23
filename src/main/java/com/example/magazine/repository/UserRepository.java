package com.example.magazine.repository;

import com.example.magazine.model.Goods;
import com.example.magazine.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;
import java.util.List;

public interface UserRepository extends JpaRepository<User, Integer> {

    User findOneByEmail(String email);

    @Transactional
    @Modifying
    @Query(value = "INSERT INTO wish(user_id,goods_id) VALUES(:userId,:goodsId)", nativeQuery = true)
    void addWishList(@Param("userId") int userId, @Param("goodsId") int goodsId);

    @Transactional
    @Modifying
    @Query(value = "DELETE FROM wish WHERE user_id = :userId AND goods_id = :goodsId ", nativeQuery = true)
    void deleteFromWishList(@Param("userId") int userId, @Param("goodsId") int goodsId);

    @Transactional
    @Modifying
    @Query(value = "SELECT goods_id FROM wish WHERE user_id = :userId", nativeQuery = true)
    List<Integer> findGoodsIdByUserId(@Param("userId") int userId);

}
