package com.app.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.app.model.Student;

@Repository
public interface HomeRepository extends CrudRepository<Student, Integer> {
	
	public Iterable<Student> findByUsernameAndPassword(String us,String pw);
	
	
	public Student findById(int id);
	
	public Iterable<Student> findAllById(int id);
}
