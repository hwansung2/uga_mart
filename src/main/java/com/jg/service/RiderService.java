package com.jg.service;

import java.util.List;

import com.jg.dto.RiderDto;
import com.jg.dto.RiderEachOrderDto;

public interface RiderService {
	//라이더 로그인 액션
	int loginAction(String id, String pw);
	//라이더 주문보기 
	List<RiderEachOrderDto> orderList();
	//라이더 회원가입
	int registerAction(RiderDto dto);
}
