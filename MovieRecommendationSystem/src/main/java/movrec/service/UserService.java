package movrec.service;
import java.util.List;

import movrec.model.User;

public interface UserService {
	public List<User> validUser(User u);
	public boolean newUser(User u);

}
