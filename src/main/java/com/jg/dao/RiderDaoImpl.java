package com.jg.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jg.dto.RiderDto;
import com.jg.dto.RiderEachOrderDto;
import com.jg.dto.RiderOrderDto;

@Repository
public class RiderDaoImpl implements RiderDao {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int loginAction(String id, String pw) {
		Map<String,String> map1 = new HashMap<String,String>();
		map1.put("id", id);
		map1.put("pw", pw);
		
		return sqlSession.selectOne("com.jg.mapper.riderMapper.loginAction",map1);
	
	}

	@Override
	public List<RiderEachOrderDto> orderList() {
		List<RiderOrderDto> list = sqlSession.selectList("com.jg.mapper.riderMapper.findOrderList");
		List<RiderEachOrderDto> orderList = null;
		
		
		for(RiderOrderDto dto : list) {
			if(orderList == null) orderList = new ArrayList<RiderEachOrderDto>();
			String[] arr = dto.getProduct_number_amount().split("_");

			Map<String,String> map1 = new HashMap<String,String>();
			map1.put("ceo_number", dto.getCeo_number());
			map1.put("product_number", arr[0]);
			
			
			RiderEachOrderDto eachOrder = new RiderEachOrderDto();
			eachOrder.setOrder_number(dto.getOrder_number());
			eachOrder.setCustomer_id(dto.getCustomer_id());
			eachOrder.setProduct_number(arr[0]);
			eachOrder.setProduct_amount(arr[1]);
			eachOrder.setProduct_k_name(sqlSession.selectOne("com.jg.mapper.riderMapper.findProductName",map1));
			eachOrder.setCeo_number(dto.getCeo_number());
			eachOrder.setOrder_date(dto.getOrder_date());
			eachOrder.setTotal_price(dto.getTotal_price());
			eachOrder.setCeo_store_name(sqlSession.selectOne("com.jg.mapper.riderMapper.findCeoStoreName",dto.getCeo_number()));
			
			orderList.add(eachOrder);
		}
		
		return orderList;
	}

	@Override
	public int registerAction(RiderDto dto) {
		return sqlSession.insert("com.jg.mapper.riderMapper.registerAction",dto);
	}


}
