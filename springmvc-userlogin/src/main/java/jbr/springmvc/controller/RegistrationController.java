package jbr.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import jbr.springmvc.model.Login;
import jbr.springmvc.model.User;
import jbr.springmvc.service.UserService;

@Controller
public class RegistrationController {
  @Autowired
  public UserService userService;

  @RequestMapping(value = "/register", method = RequestMethod.GET)
  public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView mav = new ModelAndView("register");
    mav.addObject("user", new User());

    return mav;
  }

  @RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
  public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("login") Login login,
      @ModelAttribute("user") User user) {
    ModelAndView mav = null;
    User user1 = userService.validateUserName(user);

    if (user1 == null ) 
    {
      userService.register(user);
      mav = new ModelAndView("login");
      mav.addObject("message3", "Register Suceessfully, Please login Now");
    } else 
    {
      mav = new ModelAndView("register");
      mav.addObject("message1", "Username already Exist, Try Another username");
    }
    return mav;
  }
}
