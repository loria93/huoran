package org.huoran.main.controller;

import org.huoran.main.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping({ "/user"})
public class UserController {
	@Autowired
	private UserService userService;

	@ResponseBody
	@RequestMapping(value = {"/test"})
	public String test() {
		System.out.println("controller pass");
		String userName = this.userService.getUserByUserId();
		System.out.println("userName:" + userName);
		return userName;
	}
}
