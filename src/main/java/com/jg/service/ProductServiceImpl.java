package com.jg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jg.dao.ProductDao;
import com.jg.dto.ProductByCategoryDto;
import com.jg.dto.ProductDto;
import com.jg.dto.ProductReviewDto;


@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductDao dao;
	
	
	@Override
	public ProductDto eachProduct(String ceo_number, String product_number) {
		return dao.eachProduct(ceo_number, product_number);
	}


	@Override
	public List<ProductReviewDto> productReview(String ceo_number, String product_number) {
		return dao.getReview(ceo_number, product_number);
	}


	@Override
	public List<ProductByCategoryDto> productByCategory(String category) {
		return dao.productByCategory(category);
	}
	
}
