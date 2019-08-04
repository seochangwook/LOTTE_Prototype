package com.smartgreen.prototype.application;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SmartgreenPrototypeApplication {

	public static void main(String[] args) {
		SpringApplication.run(SmartgreenPrototypeApplication.class, args);
		
		System.out.println("server run success...");
	}

}
