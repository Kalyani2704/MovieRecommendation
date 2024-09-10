package movrec.repository;
import java.util.List;
import movrec.model.Movie;

public interface MovieRepository {

	void delMovieById(int mid);

	void updMovieById(int mid);

	List<Movie> getMovies();

	boolean newMovie(Movie m);

	List<Movie> selectlang();

	List<Movie> selectgenre();

}
