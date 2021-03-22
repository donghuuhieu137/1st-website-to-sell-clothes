package com.itptit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.itptit.entities.User;
import com.itptit.services.UserService;

@Controller
public class LoginController extends BaseController{
	
	@Autowired
	UserService userService;
	
	
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String login(final ModelMap model, final HttpServletRequest request, final HttpServletResponse respone) 
		throws Exception {
		if (User.isLogged()) return "front-end/profile";
		return "front-end/login";
	}
	
	@RequestMapping(value = { "/get-password" }, method = RequestMethod.GET)
	public String getPassword(final ModelMap model, final HttpServletRequest request, final HttpServletResponse respone) 
		throws Exception {
		
		return "front-end/get-password";
	}
	
	@RequestMapping(value = { "/regist" }, method = RequestMethod.GET)
	public String Regist(final ModelMap model, final HttpServletRequest request, final HttpServletResponse respone) 
		throws Exception {
		User user = new User();
		model.addAttribute("user",user);
		return "front-end/regist";
	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
    public ModelAndView createNewUser(@Valid User user, BindingResult bindingResult) {
        ModelAndView modelAndView = new ModelAndView();
        User userExists = userService.findByUserName(user.getUserName());
        if (userExists != null) {
            bindingResult
                    .rejectValue("userName", "error.user",
                            "There is already a user registered with the user name provided");
        }
        if (bindingResult.hasErrors()) {
            modelAndView.setViewName("registration");
        } else {
            userService.saveUser(user);
            modelAndView.addObject("successMessage", "User has been registered successfully");
            modelAndView.addObject("user", new User());
            modelAndView.setViewName("redirect:regist");

        }
        return modelAndView;
    }
	
}
