package com.mc.p1.store;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/store/**")
public class StoreController {

	@GetMapping("storeMap")
	public String storeMap() {
		return "store/storePage";
	}
}
