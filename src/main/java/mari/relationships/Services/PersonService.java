package mari.relationships.Services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.stereotype.Service;

import mari.relationships.Models.Person;
import mari.relationships.Repositories.PersonRepository;

@Service
public class PersonService {

		private final PersonRepository pRepository;
		
		public PersonService(PersonRepository pRepository) {
			this.pRepository = pRepository;
		}
		
		public List<Person> allPeople(){
			return pRepository.findAll();
		}
		
		public Person createPerson(@Valid Person p) {
			return pRepository.save(p);
		}
		
		public Person findOne(Long id) {
			Optional<Person> person = pRepository.findById(id);
				if(person.isPresent()) {
					return person.get();
				} else {
					return null;
				}
		}
		
}
