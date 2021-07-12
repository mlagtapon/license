package mari.relationships.Controllers;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import mari.relationships.Models.Person;
import mari.relationships.Services.PersonService;


@RestController
public class RelAPI {
	
	private final PersonService perSer;
	
	public RelAPI(PersonService perSer) {
		this.perSer = perSer;
	}
	
	@RequestMapping("/api/person")
    public List<Person> all() {
        return perSer.allPeople();
	}
}
