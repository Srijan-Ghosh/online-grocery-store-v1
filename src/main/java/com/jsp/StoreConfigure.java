package com.jsp;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = "com.jsp")
public class StoreConfigure {
	
	@Bean //Indicates that this method produces/returns an object to be managed by the IOC container
	public EntityManager getEntityManager() {
		
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("dev");
		EntityManager manager = factory.createEntityManager();
		return manager;
		
	}
	
	@Bean
	public EntityTransaction getTransaction() {
		EntityTransaction transaction = getEntityManager().getTransaction();
		return transaction;
	}

}
