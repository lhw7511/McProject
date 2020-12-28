package com.mc.p1.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mc.p1.cart.CartMapper;
import com.mc.p1.cart.CartVO;

@Service
public class OrderService {
	
	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private CartMapper cartMapper;
	public int setOrderInsert(OrderSumVO orderSumVO)throws Exception{
		int result=orderMapper.setSumInsert(orderSumVO);
		CartVO cartVO = new CartVO();
		if(result>0) {
			
			cartVO.setMemberId(orderSumVO.getMemberId());
			//카트에있는 리스트를 꺼내서하나씩 상품정보를 세팅해서 주문목록에 넣음
			List<CartVO> cartVOs = cartMapper.getList(cartVO);
			for(CartVO vo: cartVOs) {
				OrderDetailVO detailVO = new OrderDetailVO();
				detailVO.setOrderNum(orderSumVO.getNum());
				detailVO.setProductNum(vo.getProductNum());
				detailVO.setAmount(vo.getAmount());
				detailVO.setSetCheck(vo.getSetCheck());
				detailVO.setSide(vo.getSide());
				detailVO.setDrink(vo.getDrink());
				detailVO.setTotalPrice(vo.getTotalPrice());
				result=orderMapper.setDetailInsert(detailVO);
			}
			
		}
		if(result>0) {
			result=cartMapper.setDelete(cartVO);
		}
		
		return result;
	}
}
