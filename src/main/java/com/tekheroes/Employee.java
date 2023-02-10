package com.tekheroes;


import java.sql.Date;
import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "employee")
public class Employee {
	// variables
	@OneToMany(mappedBy="employee")
	private Set<Documents> docs;
	
	@OneToMany(mappedBy="employee")
	private Set<Training> trainings;;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int employee_id;
	@Column
	private String fname;
	@Column
	private String lname;
	@Column
	private String email;
	@Column
	private String emprole;
	@Column
	private String phonenumber;
	@Column
	private int hourly;
	@Column
	private String username;
	@Column
	private String passcode;
	@Column 
	private Date onboarding_date;
//constructor for employees
	public Employee(Date onboarding_date, String fname, String lname, String email, String emprole, String phonenumber,
			int hourly, String username, String passcode) {
		super();
		this.employee_id = employee_id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.emprole = emprole;
		this.phonenumber = phonenumber;
		this.hourly = hourly;
		this.username = username;
		this.passcode = passcode;
		this.onboarding_date = onboarding_date;

	}

	public Employee() {

	}
	public Set<Documents> getDocs() {
		return docs;
	}
	

	public void setDocs(Set<Documents> docs) {
		this.docs = docs;
	}

	public Set<Training> getTrainings() {
		return trainings;
	}

	public void setTrainings(Set<Training> trainings) {
		this.trainings = trainings;
	}


	public Date getOnboarding_date() {
		return onboarding_date;
	}

	public void setOnboarding_date(Date onboarding_date) {
		this.onboarding_date = onboarding_date;
	}

	public int getId() {
		return employee_id;
	}

	public void setId(int employee_id) {
		this.employee_id = employee_id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmprole() {
		return emprole;
	}

	public void setEmprole(String emprole) {
		this.emprole = emprole;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public int getHourly() {
		return hourly;
	}

	public void setHourly(int hourly) {
		this.hourly = hourly;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPasscode() {
		return passcode;
	}

	public void setPasscode(String passcode) {
		this.passcode = passcode;
	}


	@Override
	public String toString() {
		return "Employee [employee_id=" + employee_id + ", fname=" + fname + ", lname=" + lname + ", email=" + email
				+ ", emprole=" + emprole + ", phonenumber=" + phonenumber + ", hourly=" + hourly + ", username="
				+ username + ", passcode=" + passcode + "onboarding_date=" + onboarding_date + "]";
	}


}
