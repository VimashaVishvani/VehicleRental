package com.admin;
import com.user.*;

public class admin extends user {
	private int removedUsersAmount ;
	
	
	public admin(int id, String name, String password, String gmail, String phoneNumber, String role) {
		super( id, name, password,  gmail,  phoneNumber,  role);
		this.removedUsersAmount = 0;
		
	}

}
