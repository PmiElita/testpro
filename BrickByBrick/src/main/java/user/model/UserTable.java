package user.model;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
@Entity
@Table(name="usertable")
public class UserTable {
	 @Id
	    @GeneratedValue(generator="increment")
	    @GenericGenerator(name="increment", strategy = "increment")
	    @Column(name="id")
	    private Long id;
	   @Column(name="name")
	    private String name;
	   @Column(name="surname")
	    private String surname;	    
	    @Column(name="email")
	    private String email;
		 @Column(name="aboutme")
		private String aboutme;
		 @Column(name="phone")
		  private String phone;
	    @Column(name="regdate")
	    private Date regdate;
		 @Column(name="password")
		private String password;
		 /**
		 * @return the id
		 */
		public Long getId() {
			return id;
		}
		/**
		 * @return the name
		 */
		public String getName() {
			return name;
		}
		/**
		 * @return the surname
		 */
		public String getSurname() {
			return surname;
		}
		/**
		 * @return the email
		 */
		public String getEmail() {
			return email;
		}
		/**
		 * @return the aboutme
		 */
		public String getAboutme() {
			return aboutme;
		}
		/**
		 * @return the phone
		 */
		public String getPhone() {
			return phone;
		}
		/**
		 * @return the regdate
		 */
		public Date getRegdate() {
			return regdate;
		}
		/**
		 * @return the password
		 */
		public String getPassword() {
			return password;
		}
		/**
		 * @param id the id to set
		 */
		public void setId(Long id) {
			this.id = id;
		}
		/**
		 * @param name the name to set
		 */
		public void setName(String name) {
			this.name = name;
		}
		/**
		 * @param surname the surname to set
		 */
		public void setSurname(String surname) {
			this.surname = surname;
		}
		/**
		 * @param email the email to set
		 */
		public void setEmail(String email) {
			this.email = email;
		}
		/**
		 * @param aboutme the aboutme to set
		 */
		public void setAboutme(String aboutme) {
			this.aboutme = aboutme;
		}
		/**
		 * @param phone the phone to set
		 */
		public void setPhone(String phone) {
			this.phone = phone;
		}
		/**
		 * @param reg_date the reg_date to set
		 */
		public void setRegdate(Date regdate) {
			this.regdate = regdate;
		}
		/**
		 * @param password the password to set
		 */
		public void setPassword(String password) {
			this.password = password;
		}
		public UserTable(){ }
}
