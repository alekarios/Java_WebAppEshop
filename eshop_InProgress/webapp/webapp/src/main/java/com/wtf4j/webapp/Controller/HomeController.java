package com.wtf4j.webapp.Controller;

import com.wtf4j.webapp.Entity.User;
import com.wtf4j.webapp.Entity.UsersDetail;
import com.wtf4j.webapp.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/eshop")
public class HomeController {
	
	

    @Autowired
    UserService userService;


    @RequestMapping("/homepage")
    public String HomePage() {

        return "homepage";
    }

    @RequestMapping("/productspage")
    public String ProductPage() {

        return "productpage";
    }

    @RequestMapping("/loginpage")
    public String LoginPage() {

        return "loginpage";
    }

    @RequestMapping("/registerpage")
    public String RegistryPage(Model theModel) {
        User theUser = new User();
        UsersDetail theUserDetail = new UsersDetail();
        theUser.setUsersDetail(theUserDetail);
        theModel.addAttribute("user", theUser);
        return "registerpage";
    }


    @RequestMapping("/aboutus")
    public String AboutUs() {
        return "aboutus";
    }

    @PostMapping("/registry")
    public String Registry(@ModelAttribute("user") User theUser) {
        //TODO check if the user exists like in loginValidation so we don't have double users
        userService.setUser(theUser);
        return "redirect:/eshop/homepage";
    }


    @RequestMapping("/loginValidation")
    public String Validation(@RequestParam("username") String username, @RequestParam("password") String password,
    		Model theModel) {
    	
  
        if (userService.checkUser(username, password) == true && userService.searchFlag(username, password) == 2) {
        	
        	int id = userService.searchId(username, password);
        
            return "redirect:/member/homepage";
            
        } else if(userService.checkUser(username, password) == true && userService.searchFlag(username, password) == 1) {
        	
        	int id = userService.searchId(username, password);
        	
        	 return "redirect:/member/homepage?userid="+id;
        }
        else {
        	
        	return "loginpage";
        }
    }
}
    
 
