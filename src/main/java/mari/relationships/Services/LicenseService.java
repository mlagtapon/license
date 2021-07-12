package mari.relationships.Services;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Service;

import mari.relationships.Models.License;
import mari.relationships.Repositories.LicenseRepository;

@Service
public class LicenseService {

	private final LicenseRepository lRepository;
	
	public LicenseService(LicenseRepository lRepository) {
		this.lRepository = lRepository;
	}
	
	public List<License> allLicense(){
		return lRepository.findAll();
	}
	
	public License createLicense(@Valid License l) {
		return lRepository.save(l);
	}
	
}
