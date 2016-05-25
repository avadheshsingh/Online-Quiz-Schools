package com.avi.myPack;

import java.util.Iterator;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;



public class DatabaseFactory {
	static SessionFactory factory;
	static Session session;
	static 
	{
		Configuration config = new Configuration();
		config.configure();
		factory = config.buildSessionFactory();
		session=factory.openSession();
	}
	
	 public DatabaseFactory() {
			// TODO Auto-generated constructor stub
		    session=factory.openSession();	
		}
	   
	   public int saveData(Register r) {
	       Transaction tr=	session.beginTransaction();
		   Integer i=(Integer)session.save(r);
		   tr.commit();
		   session.close();
		   return i;
		
	}
	   public int saveProject(Project r) {
	       Transaction tr=	session.beginTransaction();
		   Integer i=(Integer)session.save(r);
		   tr.commit();
		   session.close();
		   return i;
		
	}
	   public int saveQuizScore(QuizScore r) {
	       Transaction tr=	session.beginTransaction();
		   Integer i=(Integer)session.save(r);
		   tr.commit();
		   session.close();
		   return i;
		
	}
	   public Register fetchData(Integer i) {
	       Transaction tr=	session.beginTransaction();
		   Register r=(Register)session.get(Register.class, i);
		   tr.commit();
		   session.close();
		   return r;
		
	}
	   public boolean validate(String email,String password,String category) {
		   String hql = "FROM Register where email= :email and password= :password and category= :category";
			Query query = session.createQuery(hql);
			query.setString("email", email);
			query.setString("password", password);
			query.setString("category", category);
			List<Register> results = query.list();
			Iterator<Register> itr=results.iterator();
			return itr.hasNext();
			
	}
	   
	   public List<Register> getPersonalInfo(String email) {
		   String hql = "FROM Register where email= :email";
			Query query = session.createQuery(hql);
			query.setString("email", email);
			List<Register> results = query.list();
			return results;
			
	}
	   
	   public int saveQuizInfo(CreateQuiz r) {
	       Transaction tr=	session.beginTransaction();
		   Integer i=(Integer)session.save(r);
		   tr.commit();
		   session.close();
		   return i;	
	}
	   public int saveQuestion(QuizQues quizQues) {
	       Transaction tr=	session.beginTransaction();
		   Integer i=(Integer)session.save(quizQues);
		   tr.commit();
		   session.close();
		   return i;	
	}
	   
	   
	   public List<CreateQuiz> getQuizInfo(String subject) {
		   String hql = "FROM  CreateQuiz where  lower(subject) like lower('%"+ subject +"%')";
			Query query = session.createQuery(hql);
			//query.setString("subject", subject);
			List<CreateQuiz> results = query.list();
			return results;		
	}
	   public List<CreateQuiz> getQuizInfoByEmail(String email) {
		   String hql = "FROM  CreateQuiz where quizCreater= :email";
			Query query = session.createQuery(hql);
			query.setString("email", email);
			List<CreateQuiz> results = query.list();
			return results;		
	}
	   
	   public List<CreateQuiz> getQuizDetails(String quizName) {
		   String hql = "FROM  CreateQuiz where quizName= :quizName";
			Query query = session.createQuery(hql);
			query.setString("quizName", quizName);
			List<CreateQuiz> results = query.list();
			return results;		
	}
	   public int CountQuizQuestion(String quizName) {
		   String hql = "select count(id) from QuizQues where quizName= :quizName";
			Query query = session.createQuery(hql);
			query.setString("quizName", quizName);
			int count=(int) query.uniqueResult();
			return count;		
	}
	   public List<QuizQues> getQuizQuestion(String quizName,int id) {
		   String hql = "FROM  QuizQues where quizName= :quizName and id= :id";
			Query query = session.createQuery(hql);
			query.setString("quizName", quizName);
			query.setInteger("id", id);
			List<QuizQues> results = query.list();
			return results;		
	}
	   public int minQuizQuestion(String quizName) {
		   String hql = "select min(id) from QuizQues where quizName= :quizName";
			Query query = session.createQuery(hql);
			query.setString("quizName", quizName);
			int min=(int) query.uniqueResult();
			return min;		
	}
	   public int noOfQuestion(String quizName) {
		   String hql = "From CreateQuiz where quizName= :quizName";
			Query query = session.createQuery(hql);
			query.setString("quizName", quizName);
			List<CreateQuiz> results = query.list();
			String nos="0";
			for(CreateQuiz c:results){ nos=c.getNoOfQuestion();}
			int no=Integer.parseInt(nos);
			return no;		
	}
	   public int maxQuizQuestion(String quizName) {
		   String hql = "select max(id) from QuizQues where quizName= :quizName";
			Query query = session.createQuery(hql);
			query.setString("quizName", quizName);
			int max=(int) query.uniqueResult();
			return max;		
	}
	   
	   public List<QuizQues> getQuizAnswer(String quizName) {
		   String hql = "FROM  QuizQues where quizName= :quizName";
			Query query = session.createQuery(hql);
			query.setString("quizName", quizName);
			List<QuizQues> results = query.list();
			return results;		
	}
	   public List<InterviewQ> getInterviewQ() {
		   String hql = "FROM  InterviewQ";
			Query query = session.createQuery(hql);
			List<InterviewQ> results = query.list();
			return results;		
	}
	   public List<Project> getProject() {
		   String hql = "FROM  Project";
			Query query = session.createQuery(hql);
			List<Project> results = query.list();
			return results;		
	}
	   public List<Project> getProjectByName(String name) {
		   String hql = "FROM  Project where projectName= :name";
			Query query = session.createQuery(hql);
			query.setString("name", name);
			List<Project> results = query.list();
			return results;		
	}
	   
	   public boolean checkEmailExists(String email) {
		   String hql = "FROM Register where email= :email";
			Query query = session.createQuery(hql);
			query.setString("email", email);
			List<Register> results = query.list();
			Iterator<Register> itr=results.iterator();
			return itr.hasNext();
	}
	   public boolean checkProfilePicNameExists(String profile) {
		   String hql = "FROM Register where profilePic= :profilePic";
			Query query = session.createQuery(hql);
			query.setString("profilePic", profile);
			List<Register> results = query.list();
			Iterator<Register> itr=results.iterator();
			return itr.hasNext();
	}
	   public boolean checkProjectFileNameExists(String projectFileName) {
		   String hql = "FROM Project where projectFileName= :projectFileName";
			Query query = session.createQuery(hql);
			query.setString("projectFileName", projectFileName);
			List<Project> results = query.list();
			Iterator<Project> itr=results.iterator();
			return itr.hasNext();
	}
	   public boolean checkProjectNameExists(String projectName) {
		   String hql = "FROM Project where projectName= :projectName";
			Query query = session.createQuery(hql);
			query.setString("projectName", projectName);
			List<Project> results = query.list();
			Iterator<Project> itr=results.iterator();
			return itr.hasNext();
	}
	   public boolean checkQuizNameExists(String quizName) {
		   String hql = "FROM CreateQuiz where quizName= :quizName";
			Query query = session.createQuery(hql);
			query.setString("quizName", quizName);
			List<CreateQuiz> results = query.list();
			Iterator<CreateQuiz> itr=results.iterator();
			return itr.hasNext();
	}
	 
	   

}
