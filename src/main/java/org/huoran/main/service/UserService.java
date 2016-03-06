package org.huoran.main.service;  
  
import org.huoran.main.dao.UserDao;  
import org.huoran.main.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	
	public String getUser() {
		System.out.println("service pass");
		User user = this.userDao.selectByPrimaryKey(1);
		return user.getUserName();
	}
}