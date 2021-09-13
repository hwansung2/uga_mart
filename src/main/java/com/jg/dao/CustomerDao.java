package com.jg.dao;

import java.util.List;

import com.jg.dto.CustomerDto;
import com.jg.dto.CustomerOrderDto;
import com.jg.dto.CustomerReviewDto;
import com.jg.dto.CustomerStoreDto;

public interface CustomerDao {
	//소비자 메인페이지 화면 노출부분
	List<CustomerStoreDto> showAllStore();
	//소비자 로그인 액션
	int checkLogin(String id, String pw);
	//소비자 회원가입 액션
	int registerAction(CustomerDto dto);
	//마이페이지 메인
	CustomerDto myPage(String id);
	//마이페이지 회원탈퇴
	int dropMember(String id);
	//마이페이지 비번 변경
	int changePW(String id,String pw);
	//마이페이지 주문목록
	List<CustomerOrderDto> orderList(String id);
	//해당 상품 이름 가져오기
	String getProductName(String ceo_number, String product_number);
	//해당 상품 가격 가져오기
	String getProductPrice(String ceo_number, String product_number);
	//마이페이지 리뷰
	List<CustomerReviewDto> getReviewList(String id);
	//마이페이지 폰번호 바꾸기
	int modifyPhone(String customer_id , String customer_phone);
	//마이페이지 이메일 바꾸기
	int modifyEmail(String customer_id, String customer_email);
}
