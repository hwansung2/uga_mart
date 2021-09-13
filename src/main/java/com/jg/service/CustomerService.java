package com.jg.service;

import java.util.List;

import com.jg.dto.CustomerDto;
import com.jg.dto.CustomerEachOrderDto;
import com.jg.dto.CustomerReviewDto;
import com.jg.dto.CustomerStoreDto;

public interface CustomerService {
	//메인페이지 상품 보여주기
	List<CustomerStoreDto> showAllStore();
	//소비자 로그인 체크
	int checkLogin(String id,String pw);
	//소비자 회원가입 액션
	int registerAction(CustomerDto dto);
	//마이페이지 메인
	CustomerDto myPage(String id);
	//마이페이지 회원탈퇴
	int dropMember(String id);
	//마이페이지 비번변경
	int changPW(String id,String pw);
	//마이페이지 주문목록
	List<CustomerEachOrderDto> getOrderList(String id);
	//마이페이지 리뷰
	List<CustomerReviewDto> getReviewList(String id);
	//마이페이지 폰번호변경
	int modifyPhone(String id, String phone);
	//마이페이지 이메일변경
	int modifyEmail(String id,String email);
}
