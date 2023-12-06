package com.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class IdentityCardApplication {

	public static void main(String[] args) {
		System.out.println("I-Card");
		SpringApplication.run(IdentityCardApplication.class, args);
	}

}
