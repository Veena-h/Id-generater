package com.connection;



import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class connection 
{
	
	public static SessionFactory fact;
	public static SessionFactory getFactory() 
	{
		try {
		
			 if(fact==null)
			 {
				 fact= new Configuration().configure("generate_ids.xml").buildSessionFactory();
			 }
			
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		
		
		return fact;
		
		
		
		
		
		
	}
	
	
	
	public void closefactory()
	{
		if(fact.isOpen())
		{
			fact.isClosed();
		}
	}
	

}
