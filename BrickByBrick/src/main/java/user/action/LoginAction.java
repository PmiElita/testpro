package user.action;
import java.util.*;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.w3c.dom.html.HTMLSelectElement;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import user.model.UserTable; 
import user.model.UserDAO;
public class LoginAction extends ActionSupport implements ModelDriven<UserTable> {
	UserTable ut=new UserTable();
	UserDAO uDAO=new UserDAO();
	public  UserTable getModel() {
	      return ut;
	   }
   public String execute()
   {
	   
	   UserTable user=uDAO.findUser(ut);
	   if (user==null)  return "error";
	   HttpSession session = ServletActionContext.getRequest().getSession();
	   session.setAttribute("id", user.getId());
	   session.setAttribute("logined", "true");
	   if (user.getPassword().equals(ut.getPassword())) return "success";
	   return "error";
   }
   public String logout()
   {
	   HttpSession session = ServletActionContext.getRequest().getSession();
	   session.removeAttribute("id");
   session.removeAttribute("logined");
   return "success";
   }
}
