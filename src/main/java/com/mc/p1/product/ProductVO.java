package com.mc.p1.product;

import java.sql.Date;

import lombok.Data;

@Data
public class ProductVO {

	private long num;
	private String name;
	private int kcal;
	private int price;
	private int mCode;
	private int wCode;
	private Date regDate;
	private String fileName;
}
