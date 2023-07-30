package com.student.application.entity;

import lombok.Data;

import javax.persistence.*;

@Entity // This tells Hibernate to create a table of this class
@Table(name = "roles")
@Data
public class Role {
	@Id
	@Column(name = "role_id")

	// By @GeneratedValue, JPA makes a unique key automatically and applies the key
	// to the field having @Id

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(name = "name")
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
