package com.app.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.HomeRepository;
import com.app.model.Student;
import com.app.service.HomeService;

@Service
public class Iservice implements HomeService {
	
	@Autowired
	HomeRepository hr;

	@Override
	public void saveData(Student s) {
			
		hr.save(s);
	}

	@Override
	public Iterable displayAll() {
		
		return hr.findAll();
	}

	@Override
	public void retrieveData(String us, String pw, int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Iterable<Student> singleStudent(String us, String pw) {
	
		return hr.findByUsernameAndPassword(us, pw);
	}

	@Override
	public Student showCard(int id) {
		
		return hr.findById(id);
	}

	@Override
	public Iterable<Student> status(int id) {

		return hr.findAllById(id);
	}

	@Override
	public void deleteId(Student s) {

		hr.delete(s);
	}

	

	

	

	
	

	

	
	

}
