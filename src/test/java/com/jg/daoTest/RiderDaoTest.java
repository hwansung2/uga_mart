package com.jg.daoTest;



import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jg.dao.RiderDao;
import com.jg.dto.RiderDto;
import com.jg.dto.RiderEachOrderDto;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class RiderDaoTest {
	@Autowired
	RiderDao dao;
	
	@Test
	public void loginAction() {
		int result = dao.loginAction("abc", "abc");
		System.out.println(result);
	}
	
	@Test
	public void orderList() {
		List<RiderEachOrderDto> list = dao.orderList();
		for(RiderEachOrderDto dto : list) System.out.println(dto);
		
	}
	
	@Test
	public void registerAction() {
		int result = dao.registerAction(new RiderDto("1","1","1","1","1"));
		System.out.println(result);
	}
}
