package com.jg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jg.dao.RiderDao;
import com.jg.dto.RiderDto;
import com.jg.dto.RiderEachOrderDto;

@Service
public class RiderServiceImpl implements RiderService {
	@Autowired
	RiderDao dao;
	
	@Override
	public int loginAction(String id, String pw) {
		return dao.loginAction(id, pw);
	}

	@Override
	public List<RiderEachOrderDto> orderList() {
		return dao.orderList();
	}

	@Override
	public int registerAction(RiderDto dto) {
		return dao.registerAction(dto);
	}

}
