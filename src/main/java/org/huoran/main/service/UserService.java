package org.huoran.main.service;  
  
import org.huoran.main.dao.HuoranUserDao;
import org.huoran.main.entity.HuoranUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
@Service
public class UserService {
	@Autowired
	private HuoranUserDao huoranUserDao;
	
	public String getUserByUserId() {
		System.out.println("service pass");
		HuoranUser user = this.huoranUserDao.selectByPrimaryKey("00005c0e-47a8-4cee-a62f-bdd62150a122");
		return user.getUsername();
	}
}