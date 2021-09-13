package com.jg.dao;

import java.util.List;

import com.jg.dto.RiderDto;
import com.jg.dto.RiderEachOrderDto;

public interface RiderDao {
	//라이더 로그인 액션
	int loginAction(String id,String pw);
	//라이더 주문목록 리스트 // 물품이름 - 상점이름 구하기
	List<RiderEachOrderDto> orderList();
	//라이더 회원가입
	int registerAction(RiderDto dto);
	
}
