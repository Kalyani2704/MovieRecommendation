package movrec.repository;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import movrec.model.Movie;

@Repository
public class MovieRepositoryImpl implements MovieRepository{
	@Autowired
	JdbcTemplate template;

	@Override
	public void delMovieById(int mid) {
		template.update("delete from movie where movieId="+mid);
		
	}

	@Override
	public void updMovieById(int mid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Movie> getMovies() {
		List<Movie> list = template.query("select *from movie", new RowMapper<Movie>() {

			@Override
			public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {
				Movie m = new Movie();
				m.setMovieId(rs.getInt(1));
				m.setMovieName(rs.getString(2));
				m.setLanguage(rs.getString(3));
				m.setPlatform(rs.getString(4));
				m.setGenre(rs.getString(5));
				m.setPlot(rs.getString(6));
				m.setRatingValue(rs.getFloat(7));
				m.setLaunchyear(rs.getString(8));
				return m;
			}
		});
		return list.size() > 0 ? list : null;
	}

	@Override
	public boolean newMovie(final Movie m) {
		int value= template.update("insert into movie values('0', ?, ?, ?, ?, ?, ?, ?)", new PreparedStatementSetter(){
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, m.getMovieName());
				ps.setString(2, m.getLanguage());
				ps.setString(3, m.getPlatform());
				ps.setString(4, m.getGenre());
				ps.setString(5, m.getPlot());
				ps.setFloat(6, m.getRatingValue());
				ps.setString(7, m.getLaunchYear());
			}			
		});
		return value>0?true:false;
	}

	@Override
	public List<Movie> selectlang() {
		List<Movie> list = template.query("select language from movie", new RowMapper<Movie>() {
			@Override
			public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {
				Movie m = new Movie();
				m.setLanguage(rs.getString(1));
				return m;
			}
		});
		return list.size() > 0 ? list : null;
	}

	@Override
	public List<Movie> selectgenre() {
		List<Movie> list = template.query("select genre from movie", new RowMapper<Movie>() {
		@Override
		public Movie mapRow(ResultSet rs, int rowNum) throws SQLException {
			Movie m = new Movie();
			m.setGenre(rs.getString(1));
			return m;
		}
	});
	return list.size() > 0 ? list : null;
	}

}
