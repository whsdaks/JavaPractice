package com.iflysse;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
/* @MapperScan("com.iflysse.dao") */
public class Application {

	public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
