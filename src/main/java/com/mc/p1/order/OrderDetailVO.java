package com.mc.p1.order;

import lombok.Data;

@Data
public class OrderDetailVO {

	private long num;
	private String orderNum;
	private long productNum;
	private long amount;
	private int setCheck;
	private String side;
	private String drink;
	private long price;
	private long totalPrice;
	
	

	
}
