package com.mc.p1.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {

	@Autowired
	private CartMapper cartMapper;
	
	public int setInsert(CartVO cartVO)throws Exception {
		return cartMapper.setInsert(cartVO);
	};
	
}
