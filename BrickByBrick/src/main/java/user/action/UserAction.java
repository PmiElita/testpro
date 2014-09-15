package user.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
 


import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.w3c.dom.html.HTMLSelectElement;

import user.model.UserTable; 
import user.model.UserDAO;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
 
public class UserAction extends ActionSupport implements ModelDriven<UserTable>{
  UserTable userTable=new UserTable();
  UserDAO userDAO= new UserDAO();
  HttpSession session = ServletActionContext.getRequest().getSession();
  public UserTable getModel() {
      return userTable;
   }
  public String execute()
  {
	  userTable.setRegdate(new Date());
    userDAO.addUserTable(userTable);
   
	   session.setAttribute("id", userTable.getId());
	   session.setAttribute("logined", "true");
     return "success";
  }
  public String updateData()
  {
	 
	  UserTable user=userDAO.findUser((Long)session.getAttribute("id"));
	  userDAO.updateUser(user, userTable);
	  session.setAttribute("changedata", "yes");
	  return "success";
  }
/**
 * @return the userTable
 */
public UserTable getUserTable() {
	return userTable;
}
/**
 * @param userTable the userTable to set
 */
public void setUserTable(UserTable userTable) {
	this.userTable = userTable;
}
/**
 * @return the userDAO
 */
public UserDAO getUserDAO() {
	return userDAO;
}
/**
 * @param userDAO the userDAO to set
 */
public void setUserDAO(UserDAO userDAO) {
	this.userDAO = userDAO;
}
  
    
}
