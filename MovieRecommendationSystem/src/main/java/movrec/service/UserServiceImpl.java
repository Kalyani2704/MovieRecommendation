package movrec.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import movrec.model.User;
import movrec.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserRepository repo;
	
	@Override
	public List<User> validUser(User u) {
		return repo.validateUser(u);
	}

	@Override
	public boolean newUser(User u) {
		return repo.addUser(u);
	}

}
