package jbr.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;


import jbr.springmvc.dao.UserDao;
import jbr.springmvc.model.Login;
import jbr.springmvc.model.User;

public class UserServiceImpl implements UserService {

  @Autowired
  public UserDao userDao;
  @Autowired
  private MailSender mail;

  public void register(User user) {
    userDao.register(user);
  }

  public User validateUser(Login login) {
    return userDao.validateUser(login);
  }


  public User validateUserName(User user) {
    
    return userDao.validateUserName(user);
  }

  
  public void registerEmail(User user) 
  {
    
    SimpleMailMessage Msg = new SimpleMailMessage();
    String newline = System.getProperty("line.separator");
    Msg.setFrom("tstpune@gmail.com");
    Msg.setTo(user.getEmail());
    Msg.setCc("waghvardhan@gmail.com");
    Msg.setSubject("The Students Times : Registration successful");
    Msg.setText("Hello "+user.getFirstname()+","+newline+"You have successfully registered on TST."+newline+"User Name:"+user.getUsername()+newline+"Password:"+user.getPassword()+newline+newline+"- TST Admin");
    mail.send(Msg);
    
  }

}
