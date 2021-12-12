package com.greatlearning.crmapp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/list") // serve the URL /students/list
	public String listStudents( Model model ) {
		List<Customer> customers = customerService.findAll();
		
		model.addAttribute("customers", customers);
		
		return "list-customer";
	}
	
	@RequestMapping("/new")
	public String showFormForAdd(Model model) {
		Customer customer = new Customer();
		
		model.addAttribute( "newCustomer", true );
		model.addAttribute( "customer", customer );
		
		return "edit-customer";
	}
	
	@RequestMapping("/edit")
	public String showFormForEdit(
		@RequestParam("id") int id,
		Model model
	) {
		Customer customer = customerService.findById( id );
		
		model.addAttribute( "newCustomer", false );
		model.addAttribute( "customer", customer );
		
		return "edit-customer";
	}
	
	@PostMapping("/save")
	public String saveBook(
		@RequestParam("id") int id,
		@RequestParam("firstName") String firstName,
		@RequestParam("lastName") String lastName,
		@RequestParam("emailaddress") String emailaddress
	) {
		Customer customer = null;
		
		if( id == 0 ) {
			customer = new Customer( firstName, lastName, emailaddress );
		} else {
			customer = customerService.findById( id );
			customer.setFirstName(firstName);
			customer.setLastName(lastName);
			customer.setEmailaddress(emailaddress); 
		}
		
		customerService.save( customer );
				
		return "redirect:/customer/list";
	}
	
	@RequestMapping("/delete")
	public String showFormForAdd( @RequestParam("id") int id ) {
		customerService.deleteById( id );
		
		return "redirect:/customer/list";
	}

}
