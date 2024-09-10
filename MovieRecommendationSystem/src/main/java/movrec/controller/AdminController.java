package movrec.controller;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import movrec.model.Movie;
import movrec.service.MovieService;

@Controller
public class AdminController {
	@Autowired
	MovieService serv;

	@RequestMapping("/newMovie")
	public String newMovie(Map m) {
		List<Movie> langlist = serv.selectlang();
		List<Movie> glist = serv.selectgenre();
		m.put("clist", langlist);
		m.put("rtlist", glist);
		return "addMovie";
	}

	@RequestMapping("/addMovie")
	public String addMovie(Movie m, Map map) {
		if (serv.newMovie(m))
			map.put("msg", "New Hotel added");
		else
			map.put("msg", "Unable to add hotel");
		return "addMovie";
	}

	public List<Movie> getMovies(){
		List<Movie> list = serv.getMovies();
		return list;		
	}
	
	@RequestMapping("/viewMovie")
	public String viewMovies(Map map) {		
		map.put("list", this.getMovies());
		return "viewMovies";
	}
	
	@RequestMapping("/delMovieById")
	public String deleteHotelById(@RequestParam("movie_id") Integer mid, Map map) {
		serv.delMovieById(mid);
		map.put("list", this.getMovies());
		return "viewMovies";
	}
	
	@RequestMapping("/updtMovieById")
	public String updateMovieById(@RequestParam("movie_id") Integer mid, Map map) {
		serv.updMovieById(mid);
		map.put("list", this.getMovies());
		return "viewMovies";
	}
}
