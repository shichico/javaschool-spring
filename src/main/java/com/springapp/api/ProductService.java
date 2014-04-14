package com.springapp.api;

import com.springapp.domain_objects.Product;

import java.util.List;

/**
 * Created by Shichirin on 18.03.14.
 */
public interface  ProductService {

    public void addProduct(Product Product);

    public List<Product> getAllProducts();

    public void removeProduct(Integer id);

    public List<Product> getProducts(int offset, int limit);

}
