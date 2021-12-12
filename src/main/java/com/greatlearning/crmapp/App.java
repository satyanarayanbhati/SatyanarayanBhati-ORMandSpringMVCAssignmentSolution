package com.greatlearning.crmapp;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class App {

	public static void main(String[] args) {
		// create session factory object
		Configuration con = new Configuration().configure( "hibernate.cfg.xml" ).addAnnotatedClass( Customer.class );
		SessionFactory sessionFactory = con.buildSessionFactory();
		
		// create StudentServiceImpl object and pass it the session factory object
		CustomerService bs = new CustomerServiceImpl( sessionFactory );

		List<Customer> customers = bs.findAll();
		
		for( Customer customer : customers ) {
			System.out.println( customer );
		}
	}

	}


