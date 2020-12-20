package com.mc.p1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class McProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(McProjectApplication.class, args);
	}

}
