package com.jg.daoTest;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.jg.dao.CustomerDao;
import com.jg.dto.CustomerDto;
import com.jg.dto.CustomerOrderDto;
import com.jg.dto.CustomerReviewDto;
import com.jg.dto.CustomerStoreDto;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class CustomerDaoTest {
	@Autowired
	CustomerDao dao;
	
	@Test
	public void showStore() {
		List<CustomerStoreDto> list = dao.showAllStore();
		for(CustomerStoreDto store : list) System.out.println(store);
	}
	
	@Test
	public void loginAction() {
		int result=dao.checkLogin("jungu", "0000");
		System.out.println(result);
	}
	
	@Test
	public void registerAction() {
		int result = dao.registerAction(new CustomerDto("아이디1","비밀번호1","이름1","폰번호1","주소1","이메일1"));
		System.out.println(result);
	}
	
	@Test
	public void myPage() {
		CustomerDto dto = dao.myPage("jungu");
		System.out.println(dto);
	}
	
	@Test
	public void dropMember() {
		int result = dao.dropMember("2");
		System.out.println(result);
	}
	
	@Test
	public void changePW() {
		int result = dao.changePW("jungu", "222");
		System.out.println(result);
	}
	
	@Test
	public void orderList() {
		List<CustomerOrderDto> list = dao.orderList("jungu");
		for(CustomerOrderDto dto : list) System.out.println(dto);
	}
	
	@Test
	public void getProductNumber() {
		String str = dao.getProductName("9999", "1001");
		System.out.println(str);
	}
	
	@Test
	public void getProductPrice() {
		String price = dao.getProductPrice("9999", "1001");
		System.out.println(price);
	}
	
	@Test
	public void getReivewList() {
		List<CustomerReviewDto> list = dao.getReviewList("jungu");
		for(CustomerReviewDto dto : list) System.out.println(dto);
	}
	
	@Test
	public void modifyPhone() {
		int result = dao.modifyPhone("jungu", "11");
		System.out.println(result);
	}
	
	@Test
	public void modifyEmail() {
		int result = dao.modifyEmail("jungu", "abab");
		System.out.println(result);
	}
}
