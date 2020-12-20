package com.mc.p1.product;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mc.p1.util.FileManager;
import com.mc.p1.util.FilePathGenerator;
import com.mc.p1.util.ProductPager;


@Service
public class ProductService {
	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private FilePathGenerator filePathGenerator;
	@Autowired
	private FileManager fileManager;

	private int wCode=0;
	
//	@Scheduled(cron = " * 40 * * * * ")
//	public void setNormalTime() {
//		wCode=0;
//	}
//	
//	
//	@Scheduled(cron = " * 39 * * * * ")
//	public void setMorningTime() {
//		wCode=1;
//	}
	
	@Value("${product.productInsert.filePath}")
	private String filePath;
	public int setInsert(ProductVO productVO,MultipartFile img)throws Exception{
		 File file= filePathGenerator.getUseResourceLoader(filePath);
		 
		 String fileName=fileManager.saveFileCopy(img, file);
		 productVO.setFileName(fileName);
		 
		 
		return productMapper.setInsert(productVO);
		
	}
	
	public List<ProductVO> getListPlus(ProductPager productPager)throws Exception{
		productPager.makeRow();
		productPager.setWCode(wCode);
		return productMapper.getList(productPager);
	}
	
	public ProductPager getListPage(int mCode)throws Exception{
		ProductPager productPager = new ProductPager();
		productPager.setmCode(mCode);
		productPager.setWCode(wCode);
		productPager.setTotalCount(productMapper.getCount(productPager));
		productPager.makePage();
		
		return productPager;
	}
}
