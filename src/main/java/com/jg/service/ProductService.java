package com.jg.service;

import java.util.List;

import com.jg.dto.ProductByCategoryDto;
import com.jg.dto.ProductDto;
import com.jg.dto.ProductReviewDto;

public interface ProductService {
	//상품 각각 페이지
	ProductDto eachProduct(String ceo_number,String product_number);
	//각 상품의 리뷰목록들
	List<ProductReviewDto> productReview(String ceo_number,String product_number);
	//카테고리별 제품들
	List<ProductByCategoryDto> productByCategory(String category);
}
