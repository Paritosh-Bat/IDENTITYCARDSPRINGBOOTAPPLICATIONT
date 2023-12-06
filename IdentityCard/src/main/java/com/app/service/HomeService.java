package com.app.service;

import com.app.model.Student;

public interface HomeService {
	
	public void saveData(Student s);
	
	public Iterable displayAll();
	
	public void retrieveData(String us,String pw,int id);
	
	public Iterable<Student> singleStudent(String us,String pw);
	
	public Student showCard(int id);
	
	public Iterable<Student> status(int id);
	
	public void deleteId(Student s);
	
	

}
