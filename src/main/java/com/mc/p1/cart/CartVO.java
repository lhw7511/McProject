package com.mc.p1.cart;

import com.mc.p1.product.ProductVO;

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
	
	private long totalPrice;
	
	private ProductVO  productVO;
	
	
	
	
	public String getSide() {
		if(side==null) {
			side="";
		}
		return side;
	}

	public void setSide(String side) {
		this.side = side;
	}

	public String getDrink() {
		if(drink==null) {
			drink="";
		}
		return drink;
	}

	public void setDrink(String drink) {
		this.drink = drink;
	}

	public long getTotalPrice() {
		totalPrice=this.getAmount()*this.getPrice();
		return totalPrice;
	}

	public void setTotalPrice(long totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
}
