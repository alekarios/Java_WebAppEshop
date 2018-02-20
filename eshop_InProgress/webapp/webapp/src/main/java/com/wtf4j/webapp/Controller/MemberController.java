package com.wtf4j.webapp.Controller;

import com.wtf4j.webapp.Entity.Cart;
import com.wtf4j.webapp.Entity.CartDetails;
import com.wtf4j.webapp.Entity.User;
import com.wtf4j.webapp.Service.UserService;
import org.hibernate.validator.constraints.Range;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/homepage")
	public String HomePage(@RequestParam(value="userid") String userid) {
		
	     System.out.println(userid);
		
		return "homepageMember";
	}
	
	@RequestMapping("/cart")
	public String Cart(@RequestParam(value="userid") String userid){
		Cart cart = new Cart();
		CartDetails item = new CartDetails();
		item.setCart();
		User theUser = userService.getById(Integer.parseInt(userid));
		theUser.setCart(cart);
		userService.setUser(theUser);
		return "homepageMember";
	}
	

}
