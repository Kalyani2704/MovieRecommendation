package movrec.controller;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import movrec.model.User;
import movrec.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService serv;

	@RequestMapping(value = "/validUser")
	public String validateUser(User u) {
		List<User> list= serv.validUser(u);
		if (u.getTypeid()==1)
			return "user";
		else if (u.getTypeid()==2)
			return "admin";
		else
			return "Invalid login";
	}

	@RequestMapping(value = "/register")
	public String newUser(User u) {
		return "register";
	}

	@RequestMapping(value = "/addUser")
	public String addUser(User u, Map map) {
		if (serv.newUser(u))
			map.put("msg", "New User added");
		else
			map.put("msg", "Unable to add user");
		return "register";
	}

}
