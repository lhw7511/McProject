package com.mc.p1.product;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mc.p1.util.ProductPager;

@Mapper
public interface ProductMapper {

	public int setInsert(ProductVO productVO)throws Exception;
	
	public List<ProductVO> getList(ProductPager productPager)throws Exception;
	
	public long getCount(ProductPager productPager)throws Exception;
	
	public ProductVO getOne(ProductVO productVO)throws Exception;
}
