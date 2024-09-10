package movrec.model;

public class Movie {
    private int movieId;
    private String movieName;
    private String language;
    private String platform;
    private String genre;
    private String plot;
    private float RatingValue;
    private String year;
    
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getPlot() {
		return plot;
	}
	public void setPlot(String plot) {
		this.plot = plot;
	}
	public float getRatingValue() {
		return RatingValue;
	}
	public void setRatingValue(float ratingValue) {
		RatingValue = ratingValue;
	}
	public String getLaunchYear() {
		return year;
	}
	public void setLaunchyear( String year) {
		this.year = year;
	}
    
}
