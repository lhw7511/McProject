package com.mc.p1.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {

	@Autowired
	private CartMapper cartMapper;
	
	public int setInsert(CartVO cartVO)throws Exception {
		return cartMapper.setInsert(cartVO);
	}
	
	public List<CartVO> getList(CartVO cartVO)throws Exception{
		return cartMapper.getList(cartVO);
	}
	
	public long getFinalPrice(List<CartVO> cartVOs) {
		long finalPrice=0;
		for(CartVO cartVO:cartVOs) {
			finalPrice+=cartVO.getTotalPrice();
		}
		return finalPrice;
	}
	
	public CartVO getCartCheck(CartVO cartVO)throws Exception{
		return cartMapper.getCartCheck(cartVO);
	}
	
	public int setAmountUpdate(CartVO cartVO)throws Exception{
		return cartMapper.setAmountUpdate(cartVO);
	}
	
	public int setDelete(CartVO cartVO)throws Exception{
		return cartMapper.setDelete(cartVO);
	}
}
