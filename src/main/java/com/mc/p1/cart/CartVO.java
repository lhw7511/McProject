package com.mc.p1.cart;

import lombok.Data;

@Data
public class CartVO {

	private long num;
	private long productNum;
	private long amount;
	private int setCheck;
	private String side;
	private String drink;
	private String memberId;
	private long price;
}
