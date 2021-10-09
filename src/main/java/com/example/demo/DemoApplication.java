package com.example.demo;

import javax.annotation.PostConstruct;

import org.slf4j.LoggerFactory;
import org.slf4j.Logger;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

	@PostConstruct
    public void init()
    {
        Logger log = LoggerFactory.getLogger(DemoApplication.class);
        log.info("Java app started");
    }

    public String getStatus() {
        return "OK";
    }

}
