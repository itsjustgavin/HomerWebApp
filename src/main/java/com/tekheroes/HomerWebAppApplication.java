package com.tekheroes;

import java.nio.file.spi.FileSystemProvider;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.TreeSet;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.SharedSessionContract;
import org.hibernate.Transaction;
import org.hibernate.internal.build.AllowSysOut;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
//import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.JpaRepository;

//import org.springframework.mail.SimpleMailMessage;
//import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.servlet.http.HttpSession;



import org.springframework.context.annotation.Configuration;


@SpringBootApplication
@Configuration
@ComponentScan
public class HomerWebAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(HomerWebAppApplication.class, args);
	}

}

@Entity
@Table(name = "employee")
class Employee {
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

//constructor for employees
	public Employee(String fname, String lname, String email, String emprole, String phonenumber,
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
				+ username + ", passcode=" + passcode + "]";
	}


}

// Jpa is crud operations, need POJO, Primary datatype in db

interface EmployeeRepository extends JpaRepository<Employee, Long> {
	Employee findByUsername(String username);
	Employee findByFname(String fname);
	Employee findByLname(String lname);
	Employee findById(int employee_id);
	
	
}

//@Component
//class EmployeeCommandLineRunner implements CommandLineRunner {
//
//	@Autowired
//	EmployeeRepository employeeRepository;
//	
//	
//	@Override
//	public void run(String... args) throws Exception {
//		for (Employee e : this.employeeRepository.findAll()) {
//			System.out.println(e.toString());
//	
//		
//		}
//	}
//}

@Entity
@Table(name = "training")
class Training {
	
	@ManyToOne
	@JoinColumn(name = "employee_id")
	private Employee employee;
	@Id
	@Column
	private int t_id;
	@Column
	private String python;
	@Column
	private String java;
	@Column
	private String MY_sql;
	@Column
	private String javascript;

	public Training(int t_id, String python, String java, String mY_sql, String javascript) {
		super();
		this.t_id = t_id;
		this.python = python;
		this.java = java;
		this.MY_sql = mY_sql;
		this.javascript = javascript;
	}
public Training() {
	
}
	public int getId() {
		return t_id;
	}

	public void setId(int t_id) {
		this.t_id = t_id;
	}

	public String getPython() {
		return python;
	}

	public void setPython(String python) {
		this.python = python;
	}

	public String getJava() {
		return java;
	}

	public void setJava(String java) {
		this.java = java;
	}

	public String getMY_sql() {
		return MY_sql;
	}

	public void setMY_sql(String mY_sql) {
		MY_sql = mY_sql;
	}

	public String getJavascript() {
		return javascript;
	}

	public void setJavascript(String javascript) {
		this.javascript = javascript;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public Employee getEmployee() {
		return employee;
	}

	@Override
	public String toString() {
		return "training [t_id=" + t_id + ", python=" + python + ", java=" + java + ", MY_sql=" + MY_sql
				+ ", javascript=" + javascript + "]";
	}

}

//Jpa is crud operations, need POJO, Primary datatype in db

interface TrainingRepository extends JpaRepository<Training, Long> {
	Training findById(int t_id);
}

//@Component
//class TrainingCommandLineRunner implements CommandLineRunner {
//
//	@Autowired
//	TrainingRepository trainingRepository;
//
//	@Override
//	public void run(String... args) throws Exception {
//		for (Training e : this.trainingRepository.findAll()) {
//			System.out.println(e.toString());
//		}
//	}
//}

@Entity
@Table(name = "documents")
class Documents {
	@ManyToOne
	@JoinColumn(name = "employee_id")
	private Employee employee;
	
	@Id
	@Column
	private int doc_id;
	@Column
	private String policies;
	@Column
	private String onboarding;
	@Column
	private String assignments;

	public Documents(int doc_id, String policies, String onboarding, String assignments) {
		super();
		this.doc_id = doc_id;
		this.policies = policies;
		this.onboarding = onboarding;
		this.assignments = assignments;
	}
public Documents() {
	
}
	public int getId() {
		return doc_id;
	}

	public void setId(int doc_id) {
		this.doc_id = doc_id;
	}

	public String getPolicies() {
		return policies;
	}

	public void setPolicies(String policies) {
		this.policies = policies;
	}

	public String getOnboarding() {
		return onboarding;
	}

	public void setOnboarding(String onboarding) {
		this.onboarding = onboarding;
	}

	public String getAssignments() {
		return assignments;
	}

	public void setAssignments(String assignments) {
		this.assignments = assignments;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public Employee getEmployee() {
		return employee;
	}

	@Override
	public String toString() {
		return "documents [doc_id=" + doc_id + ", policies=" + policies + ", onboarding=" + onboarding
				+ ", assignments=" + assignments + "]";
	}

}

//Jpa is crud operations, need POJO, Primary datatype in db

interface DocumentsRepository extends JpaRepository<Documents, Long> {
	Documents findById(int doc_id);
}

//@Component
//class DocumentsCommandLineRunner implements CommandLineRunner {
//
//	@Autowired
//	DocumentsRepository documentsRepository;
//
//	@Override
//	public void run(String... args) throws Exception {
//		for (Documents e : this.documentsRepository.findAll()) {
//			System.out.println(e.toString());
//		}
//	}
//}


class EverythingController {
	String fName = "fname";
	String lName = "lname";
	String email = "email";
	String number = "number";
	String emprole = "emprole";
	String userName = "username";
	String passWord = "password";

	int login_id = 0;
	int employee_id = 0;
	int hourly = 0;

	int t_id = 0;

	String python = "python";

	String java = "java";

	String javascript = "javascript";

	String MY_sql = "MY_sql";

	public EverythingController(String fName, String lName, String email, String number, String emprole,
			String userName, String passWord, int login_id, int employee_id, int hourly, int t_id, String python,
			String java, String javascript, String mY_sql) {
		super();
		this.fName = fName;
		this.lName = lName;
		this.email = email;
		this.number = number;
		this.emprole = emprole;
		this.userName = userName;
		this.passWord = passWord;
		this.login_id = login_id;
		this.employee_id = employee_id;
		this.hourly = hourly;
		this.t_id = t_id;
		this.python = python;
		this.java = java;
		this.javascript = javascript;
		this.MY_sql = mY_sql;
	}

}

@Controller

class EmployeeRestController {

	
	
	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	TrainingRepository trainingRepository;
	@Autowired
	DocumentsRepository documentsRepository;
//	//this takes all info from the table and persists it to the database
	/*
	 * @PostMapping("/employee/register")
	 * 
	 * public ModelAndView addEmployee(@ModelAttribute("employee") Employee employee
	 * ) { this.employeeRepository.saveAndFlush(employee); // check to see if data
	 * got stored for (Employee e : this.employeeRepository.findAll()) {
	 * System.out.println(e.toString()); }
	 * 
	 * 
	 * 
	 * //sendEmail("gavinsgames412@gmail.com", "registered user",
	 * "you've been registered"); // get next page - add thymeleaf dependency in pom
	 * ModelAndView mv = new ModelAndView(); mv.setViewName("login"); return mv; }
	 */

	@PostMapping("/employee/login")

	// @ModelAttribute gets all data from the pojo person in the database from the
	// login jsp page
	public ModelAndView loginEmployee(@ModelAttribute("employee") Employee employee, Model model, HttpSession session) {
	
		String Hero = "Hero";
		String Hr = "Hr";
		String Admin = "Admin";
		ModelAndView mv = new ModelAndView();
		String username = employee.getUsername();
		String password = employee.getPasscode();
		
		System.out.println(username + ", " + password);
		// fetch password using username
		Employee resultSet = (Employee) this.employeeRepository.findByUsername(username);
		if (resultSet == null) {
			mv.setViewName("login");
			model.addAttribute("error", "No such username found");
		} else {
			String passwordDB = resultSet.getPasscode();
			String emproleFromDB = resultSet.getEmprole();
			String fnameFromDB = resultSet.getFname();
			String lnameFromDB = resultSet.getLname();
			String userNameFromDB = resultSet.getUsername();
			String emailFromDB = resultSet.getEmail();

			if (password.equals(passwordDB)) {
				if (emproleFromDB.equals(Hero)) {
					mv.setViewName("hero");
				}
				if (emproleFromDB.equals(Hr)) {
					mv.setViewName("hr");
				
					session.setAttribute("emailFromDB", emailFromDB);
					session.setAttribute("fnameFromDB", fnameFromDB);
					session.setAttribute("lnameFromDB", lnameFromDB);
//					model.addAttribute("emailFromDB", emailFromDB);
					session.setAttribute("userNameFromDB", userNameFromDB);
				
				}
				if (emproleFromDB.equals(Admin)) {
					mv.setViewName("admin");
				}
			} else {
				mv.setViewName("login");
				model.addAttribute("error", " username and password do not match");
			}
			// IN PERSON TABLE USERNAME NEEDS TO BE UNIQUE PRIMARY KEY

		}
		return mv;
	}
	// @GetMapping("abc.html")
	// public
	@PostMapping("/employee/lookupUser")
	public ModelAndView lookupUser(@ModelAttribute("employee") Employee employee, Model model, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		String username = employee.getUsername();
		
		Employee rs = (Employee) this.employeeRepository.findByUsername(username);
		if(rs == null) {
			mv.setViewName("hr");
		} else {
			int emp_idDB = rs.getId();
			Training rs1 = (Training) this.trainingRepository.findById(emp_idDB);
			
			Documents resultSetDoc = (Documents) this.documentsRepository.findById(emp_idDB);
			//employee
			String emproleFromDB = rs.getEmprole();
			String fnameFromDB = rs.getFname();
			String lnameFromDB = rs.getLname();
			String userNameFromDB = rs.getUsername();
			String emailFromDB = rs.getEmail();
			int hourlyFromDB = rs.getHourly();
			int emp_idFromDB = rs.getId();
			String phonenumberFromDB = rs.getPhonenumber();
			
			
			//trainings
			String jsFromDB = rs1.getJavascript();
			String javaFromDB = rs1.getJava();
			String pythonFromDB = rs1.getPython();
			String mysqlFromDB = rs1.getMY_sql();
			
			//documents
			String policiesFromDB = resultSetDoc.getPolicies();
			String onboardingFromDB = resultSetDoc.getOnboarding();
			String assignmentsFromDB = resultSetDoc.getAssignments();

	

			
			System.out.println(hourlyFromDB);
			if (username.equals(userNameFromDB)) {
				mv.setViewName("lookup");
				//from employee
				session.setAttribute("fnameFromDB", fnameFromDB);
				model.addAttribute("lnameFromDB", lnameFromDB);
				model.addAttribute("emailFromDB", emailFromDB);
				model.addAttribute("userNameFromDB", userNameFromDB);
				model.addAttribute("hourlyFromDB", hourlyFromDB);
				model.addAttribute("phonenumberFromDB", phonenumberFromDB);
				model.addAttribute("emproleFromDB", emproleFromDB);
				model.addAttribute("emp_idFromDB", emp_idFromDB);				
				//from trainings
				model.addAttribute("pythonFromDB", pythonFromDB);
				model.addAttribute("javaFromDB", javaFromDB);	
				model.addAttribute("mysqlFromDB", mysqlFromDB);
				model.addAttribute("jsFromDB", jsFromDB);
				//from documents
				

				model.addAttribute("assignmentsFromDB", assignmentsFromDB);
				model.addAttribute("onboardingFromDB",onboardingFromDB);
				model.addAttribute("policiesFromDB",policiesFromDB);
			}
			
		}
		return mv;
	}
	@PostMapping("/employee/lookup")
	
	public ModelAndView lookupEmployee(@ModelAttribute("employee") Employee employee, Model model,HttpSession session) { 
		
		ModelAndView mv = new ModelAndView();
		
		String fname = employee.getFname();
		String lname = employee.getLname();
		
		
		
		Employee resultSet = (Employee) this.employeeRepository.findByFname(fname);
		System.out.println(fname + " ," + lname);

//			Training training = (Training) iterator.next();
			
//			System.out.println("training: " + training);
//		}
		if(resultSet == null) {
			mv.setViewName("hr");
		} else {
			int emp_idDB = resultSet.getId();
			Training rs = (Training) this.trainingRepository.findById(emp_idDB);
			
			Documents resultSetDoc = (Documents) this.documentsRepository.findById(emp_idDB);
			//employee
			String emproleFromDB = resultSet.getEmprole();
			String fnameFromDB = resultSet.getFname();
			String lnameFromDB = resultSet.getLname();
			String userNameFromDB = resultSet.getUsername();
			String emailFromDB = resultSet.getEmail();
			String phonenumberFromDB = resultSet.getPhonenumber();
			int hourlyFromDB = resultSet.getHourly();
			int emp_idFromDB = resultSet.getId();
			
			//trainings
			String jsFromDB = rs.getJavascript();
			String javaFromDB = rs.getJava();
			String pythonFromDB = rs.getPython();
			String mysqlFromDB = rs.getMY_sql();
			
			//documents
			String policiesFromDB = resultSetDoc.getPolicies();
			String onboardingFromDB = resultSetDoc.getOnboarding();
			String assignmentsFromDB = resultSetDoc.getAssignments();

	

			
			System.out.println(emproleFromDB);
			if (fname.equals(fnameFromDB) && lname.equals(lnameFromDB)) {
				mv.setViewName("lookup");
				//from employee
				model.addAttribute("fnameFromDB", fnameFromDB);
				model.addAttribute("lnameFromDB", lnameFromDB);
				model.addAttribute("emailFromDB", emailFromDB);
				model.addAttribute("userNameFromDB", userNameFromDB);
				model.addAttribute("phonenumberFromDB",phonenumberFromDB);
				model.addAttribute("emproleFromDB",emproleFromDB);
				model.addAttribute("hourlyFromDB",hourlyFromDB);
				model.addAttribute("emp_idFromDB", emp_idFromDB);
			
				
				//from trainings
				model.addAttribute("pythonFromDB", pythonFromDB);
				model.addAttribute("javaFromDB", javaFromDB);	
				model.addAttribute("mysqlFromDB", mysqlFromDB);
				model.addAttribute("jsFromDB", jsFromDB);
				//from documents
				

				model.addAttribute("assignmentsFromDB", assignmentsFromDB);
				model.addAttribute("onboardingFromDB",onboardingFromDB);
				model.addAttribute("policiesFromDB",policiesFromDB);
			}
			
		}
		return mv;
	}
	
	@PostMapping("/employee/new")
	public ModelAndView newEmployee(Employee newEmployee, Training training, Documents documents, Model model, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		String username = newEmployee.getUsername();
		String password = newEmployee.getPasscode();
		String fname = newEmployee.getFname();
		String lname = newEmployee.getLname();
		String email = newEmployee.getEmail();
		String phonenumber = newEmployee.getPhonenumber();
		String emprole = newEmployee.getEmprole();
		
		int hourly = newEmployee.getHourly();
		
		
		System.out.println(username);
		employeeRepository.save(newEmployee);
		int emp_id = newEmployee.getId();
		System.out.println(emp_id);
		session.setAttribute("username", username);
		session.setAttribute("id", emp_id);
		
		
		mv.setViewName("newEmployeeTrainings");
//		Employee rs = (Employee) this.employeeRepository.findByUsername(username);
//		
//		
//		rs.setUsername(username);
//		rs.setPasscode(password);
//		rs.setFname(fname);
//		rs.setLname(lname);
//		rs.setEmail(email);
//		rs.setPhonenumber(phonenumber);
//		rs.setEmprole(emprole);
//		rs.setHourly(hourly);
//		
//		
		return mv;
	}
	@PostMapping("/employee/newtraining")
	 public ModelAndView  newTraining(Training newTraining, Model model, HttpSession session) 
	{

		ModelAndView mv = new ModelAndView();
		
		String python = newTraining.getPython();
		String java = newTraining.getJava();
		String mysql = newTraining.getMY_sql();
		String javascript = newTraining.getJavascript();
		
		
		int id = newTraining.getId();
		
		
		
		 trainingRepository.save(newTraining);
		 mv.setViewName("newDocuments");
		

    return mv;    
  }
	
	@PostMapping("/employee/newdocuments")
	public ModelAndView newDocuments(Employee employee, Documents document, Model model, HttpSession session) {
		
		
		ModelAndView mv = new ModelAndView();
		
		String policies = document.getPolicies();
		String assignments = document.getAssignments();
		String onboarding = document.getOnboarding();
		
		
		int id = document.getId();
		System.out.println(id);
		document.setId(id);
		documentsRepository.save(document);
		mv.setViewName("hr");
		
		
		
		
		return mv;
	}
	
	@PostMapping("/employee/updatedEmployee")
	 public ModelAndView updateEmployee(Employee savedEmployee, Training training, Documents documents, Model model, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		String username = savedEmployee.getUsername();
		
		
		Employee rs = (Employee) this.employeeRepository.findByUsername(username);
		System.out.println(username);
		
		int emp_id = rs.getId();
    	Training resultSet = (Training) this.trainingRepository.findById(emp_id);
    	Documents resultSetDoc = (Documents) this.documentsRepository.findById(emp_id);
    	int docid = resultSetDoc.getId();
    	String policies = resultSetDoc.getPolicies();
    	String onboarding = resultSetDoc.getOnboarding();
    	String assignments = resultSetDoc.getAssignments();
    	String java = resultSet.getJava();
    	String python = resultSet.getPython();
    	String javascript = resultSet.getJavascript();
    	String my_sql = resultSet.getMY_sql();
    	
     System.out.println(emp_id);
        if(rs != null && resultSet !=null) {  
        	
        	rs.setFname(savedEmployee.getFname());
        	rs.setLname(savedEmployee.getLname());
        	rs.setEmail(savedEmployee.getEmail());
        	rs.setHourly(savedEmployee.getHourly());
        	rs.setEmprole(savedEmployee.getEmprole());
        	rs.setPhonenumber(savedEmployee.getPhonenumber());
        	rs.setUsername(savedEmployee.getUsername());
        	
        	resultSet.setId(training.getId());
        	resultSet.setJava(training.getJava());
        	resultSet.setJavascript(training.getJavascript());
        	resultSet.setMY_sql(training.getMY_sql());
        	resultSet.setPython(training.getPython());
        	
        	
        	
        	resultSetDoc.setAssignments(documents.getAssignments());
        	resultSetDoc.setId(documents.getId());
        	resultSetDoc.setOnboarding(documents.getOnboarding());
        	resultSetDoc.setPolicies(documents.getPolicies());
        	
        	
        	
        	model.addAttribute("id",emp_id);
        	model.addAttribute("python",python);
        	model.addAttribute("java",java);
        	model.addAttribute("my_sql",my_sql);
        	model.addAttribute("javascript",javascript);
        	
        	
        	model.addAttribute("policies",policies);
        	model.addAttribute("onboarding",onboarding);
        	model.addAttribute("assignments",assignments);
        	
        	documentsRepository.save(resultSetDoc);
        	trainingRepository.save(resultSet);
        	employeeRepository.save(rs);
        	
        	model.addAttribute("updated", "Update successful");
        	mv.setViewName("hr");
//        	mv.setViewName("employeeTrainingUpdate");
        } else {
//        	resultSet = new Training();
        	
//        	mv.setViewName("hr");
//        		if(rs.getUsername().equals(savedEmployee.getUsername())) {
//        			int emp_idDB = rs.getId();
//        			System.out.println(emp_idDB);
//        			Training trainings = (Training) trainingRepository.findById(emp_id);
//        			
//        			trainings.setPython(training.getPython());
//                	trainings.setJava(training.getJava());
//                	trainings.setMY_sql(training.getMY_sql());
//                	trainings.setJavascript(training.getJavascript());
//                	trainingRepository.save(resultSet);
//        		}
        
        }
      return mv;
      
//      
    }
	@PostMapping("/employeeTrainingUpdate")
public ModelAndView updateTrainings(Training training, Model model) {
	
	ModelAndView mv = new ModelAndView();
	
	String python = training.getPython();
	String java = training.getJava();
	String mysql = training.getMY_sql();
	String javascript = training.getJavascript();
	
	
	int id = training.getId();
	
	training.setId(id);
	
	Documents resultSetDoc = (Documents) this.documentsRepository.findById(id);
	int docid = resultSetDoc.getId();
	String policies = resultSetDoc.getPolicies();
	String onboarding = resultSetDoc.getOnboarding();
	String assignments = resultSetDoc.getAssignments();
	
	
	model.addAttribute("policies",policies);
	model.addAttribute("onboarding",onboarding);
	model.addAttribute("assignments",assignments);
	model.addAttribute("id", id);
	 trainingRepository.save(training);
//	mv.setViewName("employeeDocumentsUpdate");
	return mv;
}
	
@PostMapping("/employeeDocumentsUpdate")
public ModelAndView updateDocuments(Documents documents) {
	
	ModelAndView mv = new ModelAndView();

	String policies = documents.getPolicies();
	String assignments = documents.getAssignments();
	String onboarding = documents.getOnboarding();
	
	
	
	int id = documents.getId();
	
	
	
	 documentsRepository.save(documents);
//	mv.setViewName("hr");
	return mv;
}

    public Optional<Employee> getEmployeeById(int employee_id){
        Employee employee = employeeRepository.findById(employee_id);
      
        return Optional.ofNullable(employee);
    }

   

// public ModelAndView lookupEmployee(@ModelAttribute("employee") Employee employee, Model model)
    @PostMapping("/employee/delete")

	 public ModelAndView deleteEmployee(@ModelAttribute("employee") Employee deleteEmployee, Model model) {
    	ModelAndView mv = new ModelAndView();
    	Employee employee =    employeeRepository
               .findByUsername(deleteEmployee.getUsername());
  
       if(employee != null) {
    	   mv.setViewName("hr");
    	   employee.setFname(deleteEmployee.getFname());
           employee.setLname(deleteEmployee.getLname());
           employee.setEmail(deleteEmployee.getEmail());
           employee.setPhonenumber(deleteEmployee.getPhonenumber());
           employee.setEmprole(deleteEmployee.getEmprole());
           employee.setHourly(deleteEmployee.getHourly());
           employee.setUsername(deleteEmployee.getUsername());
    	
         employeeRepository.delete(employee);
         model.addAttribute("deleted", "Employee deleted");
    	 
           
       } else {
    	   // I NEED TO REFINE THIS TO AN ALERT EMPLOYEE DOESNT EXIST
    	   model.addAttribute("doesntexist", "Username doesn't exist, please try again");
//       	employee = new Employee();
//           employee.setFname(savedEmployee.getFname());
//           employee.setLname(savedEmployee.getLname());
//           employee.setEmail(savedEmployee.getEmail());
//           employee.setPhonenumber(savedEmployee.getPhonenumber());
//           employee.setEmprole(savedEmployee.getEmprole());
//           employee.setHourly(savedEmployee.getHourly());
//           employee.setUsername(savedEmployee.getUsername());
//           employee.setPasscode(savedEmployee.getPasscode());
//           
    	   System.out.println("in here2");
       }
	return mv;
       
   }
}