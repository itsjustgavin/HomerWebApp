package com.tekheroes;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.spi.FileSystemProvider;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.TreeSet;
import java.util.stream.Collectors;

import javax.annotation.processing.FilerException;

import org.apache.tomcat.util.http.fileupload.FileUpload;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.SharedSessionContract;
import org.hibernate.Transaction;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.internal.build.AllowSysOut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
//import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
//import org.springframework.mail.SimpleMailMessage;
//import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import jakarta.*;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;


@SpringBootApplication
@Configuration
@ComponentScan
public class HomerWebAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(HomerWebAppApplication.class, args);
	}

}



// Jpa is crud operations, need POJO, Primary datatype in db

interface EmployeeRepository extends JpaRepository<Employee, Long> {
	Employee findByUsername(String username);
	Employee findByFname(String fname);
	Employee findByLname(String lname);
	Employee findById(int employee_id);
	
	
}

@Component
class EmployeeCommandLineRunner implements CommandLineRunner {

	@Autowired
	EmployeeRepository employeeRepository;
	
	
	@Override
	public void run(String... args) throws Exception {
		for (Employee e : this.employeeRepository.findAll()) {
			System.out.println(e.toString());
			System.out.println(e.getFname());
	
		
		}
	}
}

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
@Table(name="messages")
class Messages {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int messages_id;
	@Column
	private String message_from_hr;
	
	public Messages() {
		
	}
	public Messages(int messages_id, String message_from_hr) {
		super();
		this.messages_id = messages_id;
		this.message_from_hr = message_from_hr;
	}
	public int getId() {
		return messages_id;
	}
	public void setId(int messages_id) {
		this.messages_id = messages_id;
	}
	public String getMessage_from_hr() {
		return message_from_hr;
	}
	public void setMessage_from_hr(String message_from_hr) {
		this.message_from_hr = message_from_hr;
	}
	@Override
	public String toString() {
		return "Messages [messages_id=" + messages_id + ", message_from_hr=" + message_from_hr + "]";
	}
	
	
}
interface MessagesRepository extends JpaRepository<Messages, Long> {
	Messages findById(int messages_id);
}
@Entity
@Table(name = "documents")
class Documents {
	@ManyToOne
	@JoinColumn(name = "employee_id")
	private Employee employee;
	
	@Id()
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
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
@Entity
@Table(name="files")
class DBFile {
    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;

    private String fileName;

    private String fileType;

    @Lob
    private byte[] data;

    public DBFile() {

    }

    public DBFile(String fileName, String fileType, byte[] data) {
        this.fileName = fileName;
        this.fileType = fileType;
        this.data = data;
    }

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}

}

class UploadFileResponse {
    private String fileName;
    private String fileDownloadUri;
    private String fileType;
    private long size;

    public UploadFileResponse(String fileName, String fileDownloadUri, String fileType, long size) {
        this.fileName = fileName;
        this.fileDownloadUri = fileDownloadUri;
        this.fileType = fileType;
        this.size = size;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileDownloadUri() {
        return fileDownloadUri;
    }

    public void setFileDownloadUri(String fileDownloadUri) {
        this.fileDownloadUri = fileDownloadUri;
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public long getSize() {
        return size;
    }

    public void setSize(long size) {
        this.size = size;
    }
}
@Repository
interface DBFileRepository extends JpaRepository<DBFile, String> {

}

@Service
 class DBFileStorageService {

    @Autowired
    private DBFileRepository dbFileRepository;

    public DBFile storeFile(MultipartFile file) throws Exception {
        // Normalize file name
        String fileName = StringUtils.cleanPath(file.getOriginalFilename());

        try {
            // Check if the file's name contains invalid characters
            if(fileName.contains("..")) {
                throw new Exception("Sorry! Filename contains invalid path sequence " + fileName);
            }

            DBFile dbFile = new DBFile(fileName, file.getContentType(), file.getBytes());

            return dbFileRepository.save(dbFile);
        } catch (IOException ex) {
            throw new Exception("Could not store file " + fileName + ". Please try again!", ex);
        }
    }

    public DBFile getFile(String fileId) throws Exception {
        return dbFileRepository.findById(fileId)
                .orElseThrow(() -> new Exception("File not found with id " + fileId));
    }
}
//@RestController
//class FileController {
//
//    private static final Logger logger = LoggerFactory.getLogger(FileController.class);
//
//    @Autowired
//    private DBFileStorageService dbFileStorageService;
//
//    @PostMapping("/uploadFile")
//    public UploadFileResponse uploadFile(@RequestParam("file") MultipartFile file) throws Exception {
//        DBFile dbFile = dbFileStorageService.storeFile(file);
//        System.out.println("Here");
//        String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
//                .path("/downloadFile/")
//                .path(dbFile.getId())
//                .toUriString();
//
//        return new UploadFileResponse(dbFile.getFileName(), fileDownloadUri,
//                file.getContentType(), file.getSize());
//    }
//
////    @PostMapping("/uploadMultipleFiles")
////    public List<UploadFileResponse> uploadMultipleFiles(@RequestParam("files") MultipartFile[] files) {
////        return Arrays.asList(files)
////                .stream()
////                .map(file -> uploadFile(file))
////                .collect(Collectors.toList());
////    }
//
//    @GetMapping("/downloadFile/{fileId}")
//    public ResponseEntity<Resource> downloadFile(@PathVariable String fileId) throws Exception {
//        // Load file from database
//        DBFile dbFile = dbFileStorageService.getFile(fileId);
//
//        return ResponseEntity.ok()
//                .contentType(MediaType.parseMediaType(dbFile.getFileType()))
//                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + dbFile.getFileName() + "\"")
//                .body(new ByteArrayResource(dbFile.getData()));
//    }
//
//}

@Controller

class EmployeeRestController {

	
	
	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	TrainingRepository trainingRepository;
	@Autowired
	DocumentsRepository documentsRepository;
	@Autowired
	MessagesRepository messagesRepository;

	
	
	

//    private static final Logger logger = LoggerFactory.getLogger(FileController.class);

    @Autowired
    private DBFileStorageService dbFileStorageService;

    @PostMapping("/uploadFile.jsp")
    public UploadFileResponse uploadFile(@RequestParam("file") MultipartFile file) throws Exception {
    	
    	ModelAndView mv = new ModelAndView();
        DBFile dbFile = dbFileStorageService.storeFile(file);
    
        String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
                .path("/downloadFile/")
                .path(dbFile.getId())
                .toUriString();
        mv.setViewName("successfile.jsp");
        return new UploadFileResponse(dbFile.getFileName(), fileDownloadUri,
                file.getContentType(), file.getSize());
    }

    
    
    
    
    
    
//    @PostMapping("/uploadMultipleFiles")
//    public List<UploadFileResponse> uploadMultipleFiles(@RequestParam("files") MultipartFile[] files) {
//        return Arrays.asList(files)
//                .stream()
//                .map(file -> uploadFile(file))
//                .collect(Collectors.toList());
//    }

//    @GetMapping("/downloadFile/{fileId}")
//    public ResponseEntity<Resource> downloadFile(@PathVariable String fileId) throws Exception {
//        // Load file from database
//        DBFile dbFile = dbFileStorageService.getFile(fileId);
//
//        return ResponseEntity.ok()
//                .contentType(MediaType.parseMediaType(dbFile.getFileType()))
//                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + dbFile.getFileName() + "\"")
//                .body(new ByteArrayResource(dbFile.getData()));
//    }
//	
//	
    
    
    
    @ResponseBody
    @GetMapping("/employee/employeeAll")
    public ModelAndView allEmployees(Employee employee, Model model) {
    	ModelAndView mv = new ModelAndView();
    	List<Employee> allEmployees = employeeRepository.findAll();
    	
    	model.addAttribute("allEmployees",allEmployees);
    	return mv;
    }
	
	@PostMapping("/employee/login")

	
	public ModelAndView loginEmployee(@ModelAttribute("employee") Employee employee, Model model, HttpSession session) {
		session.isNew();
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
			model.addAttribute("error", "No such username or password found");
		} else {
			String passwordDB = resultSet.getPasscode();
			String emproleFromDB = resultSet.getEmprole();
			String fnameFromDB = resultSet.getFname();
			String lnameFromDB = resultSet.getLname();
			String userNameFromDB = resultSet.getUsername();
			String emailFromDB = resultSet.getEmail();
			String phonenumberFromDB = resultSet.getPhonenumber();

			if (password.equals(passwordDB)) {
				if (emproleFromDB.equals(Hero)) {
					mv.setViewName("hero");
					int emp_idDB = resultSet.getId();
					Training rs = (Training) this.trainingRepository.findById(emp_idDB);
					//trainings
					String jsFromDB = rs.getJavascript();
					String javaFromDB = rs.getJava();
					String pythonFromDB = rs.getPython();
					String mysqlFromDB = rs.getMY_sql();
					
					//from trainings
					session.setAttribute("pythonFromDB", pythonFromDB);
					session.setAttribute("javaFromDB", javaFromDB);	
					session.setAttribute("mysqlFromDB", mysqlFromDB);
					session.setAttribute("jsFromDB", jsFromDB);
					
					
					Documents resultSetDoc = (Documents) this.documentsRepository.findById(emp_idDB);
					//documents
					String policiesFromDB = resultSetDoc.getPolicies();
					String onboardingFromDB = resultSetDoc.getOnboarding();
					String assignmentsFromDB = resultSetDoc.getAssignments();
					
					//from documents
					session.setAttribute("assignmentsFromDB", assignmentsFromDB);
					session.setAttribute("onboardingFromDB",onboardingFromDB);
					session.setAttribute("policiesFromDB",policiesFromDB);

					
					System.out.println(emp_idDB);
					session.setAttribute("emailFromDB", emailFromDB);
					session.setAttribute("fnameFromDB", fnameFromDB);
					session.setAttribute("lnameFromDB", lnameFromDB);
					session.setAttribute("userNameFromDB", userNameFromDB);
					session.setAttribute("emproleFromDB", emproleFromDB);
					
				}
				if (emproleFromDB.equals(Hr)) {
					mv.setViewName("hr");
				
					session.setAttribute("emailFromDB", emailFromDB);
					session.setAttribute("fnameFromDB", fnameFromDB);
					session.setAttribute("lnameFromDB", lnameFromDB);
					session.setAttribute("phonenumberFromDB", phonenumberFromDB);
					session.setAttribute("userNameFromDB", userNameFromDB);
					session.setAttribute("emproleFromDB", emproleFromDB);
				
				}
				if (emproleFromDB.equals(Admin)) {
					mv.setViewName("admin");
					session.setAttribute("emailFromDB", emailFromDB);
					session.setAttribute("fnameFromDB", fnameFromDB);
					session.setAttribute("lnameFromDB", lnameFromDB);
					session.setAttribute("emproleFromDB", emproleFromDB);
//					
					session.setAttribute("userNameFromDB", userNameFromDB);
				}
			} else {
				mv.setViewName("login");
				model.addAttribute("error", " username and password do not match");
			}
			// IN PERSON TABLE USERNAME NEEDS TO BE UNIQUE PRIMARY KEY

		}
		return mv;
	}

	
	
	
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
			String passwordFromDB = rs.getPasscode();
			Date onboarding_dateFromDB = rs.getOnboarding_date();
			
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
				model.addAttribute("fnameFromDB", fnameFromDB);
//				session.setAttribute("fnameFromDB", fnameFromDB);
				model.addAttribute("lnameFromDB", lnameFromDB);
				model.addAttribute("emailFromDB", emailFromDB);
				model.addAttribute("userNameFromDB", userNameFromDB);
				model.addAttribute("passwordFromDB", passwordFromDB);
				model.addAttribute("hourlyFromDB", hourlyFromDB);
				model.addAttribute("phonenumberFromDB", phonenumberFromDB);
				model.addAttribute("emproleFromDB", emproleFromDB);
				model.addAttribute("emp_idFromDB", emp_idFromDB);	
				model.addAttribute("onboarding_dateFromDB", onboarding_dateFromDB);
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
	
	
	
	
	@GetMapping("/employee/searchAllAjax")
	@ResponseBody
	public ModelAndView searchAllEmployeeAjax(Employee employee, Model model, HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
	
		System.out.println("Here");
		List<Employee> allEmployees = employeeRepository.findAll();
	
		req.setAttribute("allEmployees", allEmployees);
		return mv;
		
		
	}
	
	
	
	
	
	
	
	@PostMapping("/employee/searchallfromhero")
	public ModelAndView searchallfromHero(@ModelAttribute("employee") Employee employee, Model model, HttpServletRequest req) {
		List<Employee> allEmployees = employeeRepository.findAll();


		
	
		req.setAttribute("allEmployees", allEmployees);
		ModelAndView mv = new ModelAndView();
	
	
		mv.setViewName("searchallfromhero");
		return mv;
		}
	
	
	
	
	@PostMapping("/employee/searchallfromhr")
	public ModelAndView searchallfromHr(@ModelAttribute("employee") Employee employee, Model model, HttpServletRequest req) {
		List<Employee> allEmployees = employeeRepository.findAll();


		
	
		req.setAttribute("allEmployees", allEmployees);
		ModelAndView mv = new ModelAndView();
	
	
		mv.setViewName("searchallfromhr");
		return mv;
		}
	
	
	
	
	@PostMapping("/employee/searchallpractice")
	public ModelAndView searchAllEmployees(@ModelAttribute("employee") Employee employee, Model model, HttpServletRequest req) {
		List<Employee> allEmployees = employeeRepository.findAll();


		
	
		req.setAttribute("allEmployees", allEmployees);
		ModelAndView mv = new ModelAndView();
	
	
		mv.setViewName("searchallpractice");
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
			String passwordFromDB = resultSet.getPasscode();
			String emailFromDB = resultSet.getEmail();
			String phonenumberFromDB = resultSet.getPhonenumber();
			int hourlyFromDB = resultSet.getHourly();
			int emp_idFromDB = resultSet.getId();
			Date onboarding_dateFromDB = resultSet.getOnboarding_date();
			
			
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
				model.addAttribute("passwordFromDB", passwordFromDB);
				model.addAttribute("phonenumberFromDB",phonenumberFromDB);
				model.addAttribute("emproleFromDB",emproleFromDB);
				model.addAttribute("hourlyFromDB",hourlyFromDB);
				model.addAttribute("emp_idFromDB", emp_idFromDB);
				model.addAttribute("onboarding_dateFromDB", onboarding_dateFromDB);
				
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
	
	
@PostMapping("/employee/lookupuserother")
	
	public ModelAndView lookupEmployeeOtherUser(@ModelAttribute("employee") Employee employee, Model model,HttpSession session) { 
		
	ModelAndView mv = new ModelAndView();
	String username = employee.getUsername();
	
	Employee rs = (Employee) this.employeeRepository.findByUsername(username);
	if(rs == null) {
		mv.setViewName("hr");
	} else {
		
		
		//employee
		String emproleFromDB = rs.getEmprole();
		String fnameFromDB = rs.getFname();
		String lnameFromDB = rs.getLname();
		String userNameFromDB = rs.getUsername();
		String emailFromDB = rs.getEmail();
		String passwordFromDB = rs.getPasscode();
		String phonenumberFromDB = rs.getPhonenumber();
		Date onboarding_dateFromDB = rs.getOnboarding_date();
		
	
		if (username.equals(userNameFromDB)) {
			mv.setViewName("lookupother");
			//from employee
			model.addAttribute("fnameFromDB", fnameFromDB);
			model.addAttribute("lnameFromDB", lnameFromDB);
			model.addAttribute("emailFromDB", emailFromDB);
			model.addAttribute("userNameFromDB", userNameFromDB);
			model.addAttribute("passwordFromDB", passwordFromDB);
			model.addAttribute("phonenumberFromDB", phonenumberFromDB);
			model.addAttribute("emproleFromDB", emproleFromDB);
			model.addAttribute("onboarding_dateFromDB", onboarding_dateFromDB);
		
		}
		
	}
	return mv;
}
	
	
	
	
@PostMapping("/employee/lookupother")
	
	public ModelAndView lookupEmployeeOther(@ModelAttribute("employee") Employee employee, Model model,HttpSession session) { 
		
		ModelAndView mv = new ModelAndView();
		
		String fname = employee.getFname();
		String lname = employee.getLname();
		
		
		
		Employee resultSet = (Employee) this.employeeRepository.findByFname(fname);
		System.out.println(fname + " ," + lname);

//			Training training = (Training) iterator.next();
			
//			System.out.println("training: " + training);
//		}
		if(resultSet == null) {
			mv.setViewName("employeecontacts");
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
			String passwordFromDB = resultSet.getPasscode();
			Date onboarding_dateFromDB = resultSet.getOnboarding_date();

	

			
			System.out.println(emproleFromDB);
			if (fname.equals(fnameFromDB) && lname.equals(lnameFromDB)) {
				mv.setViewName("lookupother");
				//from employee
				model.addAttribute("fnameFromDB", fnameFromDB);
				model.addAttribute("lnameFromDB", lnameFromDB);
				model.addAttribute("emailFromDB", emailFromDB);
				model.addAttribute("userNameFromDB", userNameFromDB);
				model.addAttribute("passwordFromDB", passwordFromDB);
				model.addAttribute("phonenumberFromDB",phonenumberFromDB);
				model.addAttribute("emproleFromDB",emproleFromDB);
				model.addAttribute("onboarding_dateFromDB", onboarding_dateFromDB);
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
		Date onboarding_date = newEmployee.getOnboarding_date();
		
		System.out.println(username);
		employeeRepository.save(newEmployee);
		int emp_id = newEmployee.getId();
		System.out.println(emp_id);
		session.setAttribute("username", username);
		session.setAttribute("id", emp_id);
		
		
		mv.setViewName("newEmployeeTrainings");
	
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
		mv.setViewName("admin");
		
		
		
		
		return mv;
	}
	
	
	@PostMapping("/employee/updateLogin")
	public ModelAndView updateLogin(Employee employee) {
		ModelAndView mv = new ModelAndView();
		String username = employee.getUsername();
		String passcode = employee.getPasscode();
		
		Employee rs = (Employee) this.employeeRepository.findByUsername(username);
		
		employee.setPasscode(passcode);
		employeeRepository.save(employee);
		
		return mv;
		
	}


	@PostMapping("/employee/updatedEmployee")
	 public ModelAndView updateEmployee(Employee savedEmployee, Training training, Documents documents, Model model, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		String username = savedEmployee.getUsername();
		
		
		Employee rs = (Employee) this.employeeRepository.findByUsername(username);
		System.out.println(username);
		String password = rs.getPasscode();
		System.out.println(password);
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
        	rs.setPasscode(savedEmployee.getPasscode());
        	rs.setOnboarding_date(savedEmployee.getOnboarding_date());
        	
        	System.out.println("Here");
        	resultSet.setId(training.getId());
        	resultSet.setJava(training.getJava());
        	resultSet.setJavascript(training.getJavascript());
        	resultSet.setMY_sql(training.getMY_sql());
        	resultSet.setPython(training.getPython());
        	
        	
        	
        	resultSetDoc.setAssignments(documents.getAssignments());
        	resultSetDoc.setId(documents.getId());
        	resultSetDoc.setOnboarding(documents.getOnboarding());
        	resultSetDoc.setPolicies(documents.getPolicies());
        	model.addAttribute("password", password);
        	model.addAttribute("username",username);
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
        	mv.setViewName("successfulupdate");
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
    	   mv.setViewName("admin");
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
    @PostMapping("/logout")
    public ModelAndView logout(HttpSession session) {
    	ModelAndView mv = new ModelAndView();
    	
    	
    	session.invalidate();
    	
    	mv.setViewName("login");
    	return mv;
    	
    }
//    @PostMapping("/GetWebMessage/hero")
//    public ModelAndView messegeBoard(@ModelAttribute("messages") Messages messagesFromHR, Model model) {
//    	
//    	
//    	ModelAndView mv = new ModelAndView();
//    	
//    	int message_id_hr = messagesFromHR.getId();
//    	String message_from_hr = messagesFromHR.getMessage_from_hr();
//
//    	messagesFromHR.setMessage_from_hr(message_from_hr);
//    	model.addAttribute("message", message_from_hr);
//    	System.out.println(message_from_hr);
//    
//    	
//    	String username = newEmployee.getUsername();
//		String password = newEmployee.getPasscode();
//		String fname = newEmployee.getFname();
//		String lname = newEmployee.getLname();
//		String email = newEmployee.getEmail();
//		String phonenumber = newEmployee.getPhonenumber();
//		String emprole = newEmployee.getEmprole();
//		
//		int hourly = newEmployee.getHourly();
//		
//		
//		System.out.println(username);
//		employeeRepository.save(newEmployee);
//    	
//    
//    	messagesRepository.save(messagesFromHR);
//    	
//    	mv.setViewName("hr");
//    	
//    	return mv;
//    }
    
    @PostMapping("uploadfile")
    
    public void uploadFile() {
    	
    }
    
    
}