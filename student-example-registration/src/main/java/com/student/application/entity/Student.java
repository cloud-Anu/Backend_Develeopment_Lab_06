package com.student.application.entity;

import lombok.Data;

import javax.persistence.*;

@Entity // This tells Hibernate to create a table of this class
@Table(name = "student")
@Data
public class Student {

	// define fields

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	// By @GeneratedValue, JPA makes a unique key automatically and applies the key
	// to the field having @Id

	@Column(name = "id")
	private int id;

	@Column(name = "firstname")
	private String firstname;

	@Column(name = "lastname")
	private String lastname;

	@Column(name = "course")
	private String course;

	@Column(name = "country")
	private String country;

	public Student() {

	}

	public Student(String firstname, String lastname, String course, String country) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.course = course;
		this.country = country;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

}
