package com.mc.p1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mc.p1.util.ProductPager;

@Controller
@RequestMapping("/product/**")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	
	@PostMapping("listPlus")
	public ModelAndView getPlus(ProductPager productPager) throws Exception{
		 
		 ModelAndView mv = new ModelAndView();
		 List<ProductVO> productVOs=productService.getListPlus(productPager);
		 mv.addObject("list", productVOs);
		 mv.setViewName("product/productAjaxResult");
		 return mv;
	}
	
	@GetMapping("productList")
	public  ModelAndView getList(@RequestParam(defaultValue = "1")int mCode) throws Exception {
		 ModelAndView mv = new ModelAndView();
		 mv.addObject("mCode", mCode);
		 ProductPager productPager=productService.getListPage(mCode);
		 mv.addObject("pager", productPager);
		 System.out.println(productPager.getmCode());
		 System.out.println(productPager.getTotalPage());
		 mv.setViewName("product/productList");
		return mv;
	}
	
	
	@GetMapping("productInsert")
	public  ModelAndView setInsert() {
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("product/productInsert");
		return mv;
	}
	
	@PostMapping("productInsert")
	public  ModelAndView  setInsert(ProductVO productVO,MultipartFile img)throws Exception{
		 ModelAndView mv = new ModelAndView();
		
		 String message="등록 실패";
		 int result=productService.setInsert(productVO, img);
		 if(result>0) {
			 message="등록 성공";
		 }
		 mv.addObject("msg", message);
		 mv.addObject("path", "./productList");
		 mv.setViewName("common/result");
		 return mv;
	}
}
