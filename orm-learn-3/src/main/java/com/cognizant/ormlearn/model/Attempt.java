package com.cognizant.ormlearn.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="attempt")
public class Attempt {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "at_id")
	private int id;
	@Column(name="at_date")
	private Date date;
	@ManyToOne
	@JoinColumn(name="at_us_id")
	private User user;
	@OneToMany(mappedBy="attempt", fetch=FetchType.EAGER)
	private Set<AttemptQuestion> attemptQuestionList;
	@Column(name="at_score", nullable=true)
	private Double score;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Double getScore() {
		return score;
	}
	public void setScore(Double score) {
		this.score = score;
	}
	public Set<AttemptQuestion> getAttemptQuestionList() {
		return attemptQuestionList;
	}
	public void setAttemptQuestionList(Set<AttemptQuestion> attemptQuestionList) {
		this.attemptQuestionList = attemptQuestionList;
	}
	@Override
	public String toString() {
		return "Attempt [id=" + id + ", date=" + date + ", user=" + user + ", score=" + score + "]";
	}
}
