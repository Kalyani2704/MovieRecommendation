package movrec.service;
import java.util.List;
import movrec.model.Movie;

public interface MovieService {

	List<Movie> getMovies();

	void updMovieById(int mid);

	void delMovieById(int mid);

	boolean newMovie(Movie m);

	List<Movie> selectlang();

	List<Movie> selectgenre();

}
