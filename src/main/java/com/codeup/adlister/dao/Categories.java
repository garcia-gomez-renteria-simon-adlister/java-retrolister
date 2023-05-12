package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;


import java.util.List;

public interface Categories {

    List<Ad> all();
    Long insert(Category category);

    void update (Category category);

    void delete(Category category);

}
