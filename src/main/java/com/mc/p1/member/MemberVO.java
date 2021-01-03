package com.mc.p1.member;

import java.sql.Date;
import java.util.List;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;

import com.mc.p1.address.AddressVO;

import lombok.Data;

@Data
public class MemberVO {
	@Length(max = 10,min = 6)
	private String id;
	@Length(max = 14,min = 6)
	private String pw;
	private String pw2;
	@NotEmpty
	private String phone;
	@Email
	@NotEmpty
	private String email;
	@Size(min = 2)
	private String name;
	private int auth;
	private Date regDate;
	
	private List<AddressVO> addressVOs;
	
	
}
