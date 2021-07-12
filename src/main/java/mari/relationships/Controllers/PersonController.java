package mari.relationships.Controllers;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import mari.relationships.Models.License;
import mari.relationships.Models.Person;
import mari.relationships.Services.LicenseService;
import mari.relationships.Services.PersonService;


@Controller
public class PersonController {
	
	private final PersonService pService;
	private final LicenseService lService;
	
	public PersonController(PersonService pService, LicenseService lService) {
		this.pService = pService;
		this.lService = lService;
	}
		
		@RequestMapping("/")
		public String index(@ModelAttribute("person") Person person, @ModelAttribute("license") License license, Model model) {
			model.addAttribute("people", pService.allPeople());
			model.addAttribute("licenses", lService.allLicense());
			return "home.jsp";
		}
		
		@RequestMapping("/persons/new")
		public String newPerson(@ModelAttribute("person") Person person) {
				return "person.jsp";
		}
		
		@InitBinder     
		public void initBinder(WebDataBinder binder){
		     binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("MM-dd-yyyy"), true, 10));   
		}
		
		@RequestMapping("/persons/{id}")
		public String showOne(@PathVariable("id") Long id, HttpServletRequest request, Model model) {
		    Person aPerson = pService.findOne(id);
			String num = String.format("%06d", id);
		    model.addAttribute("aPerson", aPerson);
		    model.addAttribute("num", num);
		    return "show.jsp";
		 }
	
		@PostMapping("/people")
		public String create(@Valid @ModelAttribute("person") Person person, BindingResult result) {
	        if(result.hasErrors()) {
	            return "person.jsp";
	        } else {
	            pService.createPerson(person);
	            return "redirect:/";
	        }
	        
		}
}
