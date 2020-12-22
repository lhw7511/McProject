package com.mc.p1.product;

import java.sql.Date;

import lombok.Data;


public class ProductVO {

	private long num;
	private String name;
	private int kcal;
	private int price;	
	private Date regDate;
	private String fileName;
	private int mCode;
	private int wCode;
	public long getNum() {
		return num;
	}
	public void setNum(long num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKcal() {
		return kcal;
	}
	public void setKcal(int kcal) {
		this.kcal = kcal;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public int getmCode() {
		return mCode;
	}
	public void setmCode(int mCode) {
		this.mCode = mCode;
	}
	public int getwCode() {
		return wCode;
	}
	public void setwCode(int wCode) {
		this.wCode = wCode;
	}
	
	
	
}
