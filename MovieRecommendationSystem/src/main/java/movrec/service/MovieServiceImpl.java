package movrec.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import movrec.model.Movie;
import movrec.repository.MovieRepository;

@Service
public class MovieServiceImpl implements MovieService{
	@Autowired
	MovieRepository repo;
	
	@Override
	public List<Movie> getMovies() {
		return repo.getMovies();
	}

	@Override
	public void updMovieById(int mid) {
		repo.updMovieById(mid);
	}

	@Override
	public void delMovieById(int mid) {
		repo.delMovieById(mid);
		
	}

	@Override
	public boolean newMovie(Movie m) {
		return repo.newMovie(m);
	}

	@Override
	public List<Movie> selectlang() {
		return repo.selectlang();
	}

	@Override
	public List<Movie> selectgenre() {
		return repo.selectgenre();
	}

}
