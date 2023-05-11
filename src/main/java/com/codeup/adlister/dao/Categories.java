package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Categories {
    User findByCategory(String category);
    List<Category> all();
    Long insert(Category category);

}
