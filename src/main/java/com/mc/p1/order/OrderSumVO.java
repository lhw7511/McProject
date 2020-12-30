package com.mc.p1.order;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class OrderSumVO {

	private String num;
	private String memberId;
	private String addr;
	private long finalPrice;
	private String status;
	private Date regDate;
	
	private List<OrderDetailVO> detailVOs;
}
