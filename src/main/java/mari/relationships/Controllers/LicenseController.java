package mari.relationships.Controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import mari.relationships.Models.License;
import mari.relationships.Models.Person;
import mari.relationships.Services.LicenseService;
import mari.relationships.Services.PersonService;

@Controller
public class LicenseController {
	private final PersonService pService;
	private final LicenseService lService;
	
	public LicenseController(PersonService pService, LicenseService lService) {
		this.pService = pService;
		this.lService = lService;
	}
	
	@RequestMapping("/licenses/new")
	public String newPerson(@ModelAttribute("license") License license, @ModelAttribute("person") Person person, Model model) {
			model.addAttribute("people", pService.allPeople());
			return "license.jsp";
	}

	@PostMapping("/licenses")
	public String create(@Valid @ModelAttribute("license") License license, @ModelAttribute("person") Person person, BindingResult result) {
        if(result.hasErrors()) {
            return "license.jsp";
        } else {
           lService.createLicense(license);
            return "redirect:/";
        }
		
	}
}
