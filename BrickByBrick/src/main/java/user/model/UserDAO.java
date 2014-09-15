package user.model;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException; 
import org.hibernate.SQLQuery;
import org.hibernate.Session; 
import org.hibernate.Transaction;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
public class UserDAO {
	@SuppressWarnings("deprecation")
	private static SessionFactory factory=new Configuration().configure().buildSessionFactory();

       
	   public void addUserTable(UserTable userTable)	   
	   { 
		   Session session = factory.openSession();
	   
	      Transaction tx = null;
	      try{
		  tx=session.beginTransaction();
	      session.save(userTable);
	     tx.commit();
	   }catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      }finally {
	         session.close(); 
	      }
	   }
	   public UserTable findUser(UserTable user)
	   {
		  
		   Session session = factory.openSession();
		   
		      Transaction tx = null;
		     
		      try{
			  tx=session.beginTransaction();
			  String mail=user.getEmail();
			  String sql = "SELECT * FROM usertable WHERE (usertable.email = '"+mail+"') LIMIT 1";
			  SQLQuery query = session.createSQLQuery(sql);
			  query.addEntity(UserTable.class);
			  List<UserTable> list=query.list();
			  if (!list.isEmpty())  return list.get(0);
				  tx.commit();
			   }catch (HibernateException e) {
			         if (tx!=null) tx.rollback();
			         e.printStackTrace(); 
			      }finally {
			         session.close(); 
			      }
			  
			 
			   
			return null;
			
	   }
	   public UserTable findUser(Long iD)
	   {
		   

		   Session session = factory.openSession();
		   
		      Transaction tx = null;
		      try{
				  tx=session.beginTransaction();
				  
				  String sql = "SELECT * FROM usertable WHERE (usertable.id = '"+iD+"') LIMIT 1";
				  SQLQuery query = session.createSQLQuery(sql);
				  query.addEntity(UserTable.class);
				  List<UserTable> list=query.list();
				  System.out.println(list.get(0).getPassword());
				  if (!list.isEmpty())  return list.get(0);
					  tx.commit();
				   }catch (HibernateException e) {
				         if (tx!=null) tx.rollback();
				         e.printStackTrace(); 
				      }finally {
				         session.close(); 
				      }
				return null;
	   }
	   public void updateUser(UserTable user, UserTable newUser)
	   {
		   newUser.setId(user.getId());
		  
		   newUser.setRegdate(user.getRegdate());
		   //System.out.println(newUser.getPassword());
		   if (newUser.getPassword()==null) newUser.setPassword(user.getPassword());
		   if (newUser.getPassword().equals("")) newUser.setPassword(user.getPassword());
		   Session session = factory.openSession();
		   
		      Transaction tx = null;
		      try{
				  tx=session.beginTransaction();
				  
				  session.saveOrUpdate(newUser);
				 
					  tx.commit();
				   }catch (HibernateException e) {
				         if (tx!=null) tx.rollback();
				         e.printStackTrace(); 
				      }finally {
				         session.close(); 
				      }
	   }
}
