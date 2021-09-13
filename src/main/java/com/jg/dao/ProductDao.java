package com.jg.dao;

import java.util.List;

import com.jg.dto.ProductByCategoryDto;
import com.jg.dto.ProductDto;
import com.jg.dto.ProductReviewDto;

public interface ProductDao {
	//각각의 해당 물품페이지로 이동하기
	ProductDto eachProduct(String ceo_number,String product_number);
	//해당 제품의 리뷰 가져오기
	List<ProductReviewDto> getReview(String ceo_number, String product_number);
	//카테고리별 제품들
	List<ProductByCategoryDto> productByCategory(String category);
}
