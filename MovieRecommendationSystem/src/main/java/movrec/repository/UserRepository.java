package movrec.repository;
import java.util.List;

import movrec.model.User;

public interface UserRepository {
	public List<User> validateUser(User u);

	public boolean addUser(User u);


}
