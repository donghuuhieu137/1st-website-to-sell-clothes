package com.devpro;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Entrypoint cho Spring-Boot(Là class phải chứa @SpringBootApplication)
 * 
 * -- Các bước tích hợp một module(web, jpa, security) vào spring-boot project:
 * ----- 1: Sử dụng starter(thêm dependency vào maven - pom.xml)
 * ----- 2: Cấu hình cho module đó
 */
@SpringBootApplication
public class WebServerStarter {
	public static void main(String[] args) {
		SpringApplication.run(WebServerStarter.class, args);
	}
}
