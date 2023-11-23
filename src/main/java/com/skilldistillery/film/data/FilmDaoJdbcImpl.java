package com.skilldistillery.film.data;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.skilldistillery.film.entities.Film;

public class FilmDaoJdbcImpl implements FilmDAO {
	private static final String URL = "jdbc:mysql://localhost:3306/sdvid?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=US/Mountain";
	private static final String USER = "student";
	private static final String PASS = "student";

	private final String fullDataQuery = "SELECT film.*, language.name FROM film JOIN language ON language.id = film.language_id" + "";

	public FilmDaoJdbcImpl() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.err.println("Error loading MySQL Driver");
			throw new RuntimeException("Unable to load MySQL Driver class");
		}
	}

	@Override
	public Film findById(int filmId) {
		Film film = null;
		try {
			Connection conn = DriverManager.getConnection(URL, USER, PASS);

			String sql = fullDataQuery + " WHERE film.id = ?";

			PreparedStatement stmt = conn.prepareStatement(sql);

			stmt.setInt(1, filmId);

			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				int filmsId = rs.getInt("film.id");
				String title = rs.getString("title");
				String desc = rs.getString("description");
				short releaseYear = rs.getShort("release_year");
				int langId = rs.getInt("language_id");
				int rentDur = rs.getInt("rental_duration");
				double rate = rs.getDouble("rental_rate");
				int length = rs.getInt("length");
				double repCost = rs.getDouble("replacement_cost");
				String rating = rs.getString("rating");
				String features = rs.getString("special_features");
				String lang = rs.getString("name");

				film = new Film(filmsId, title, desc, releaseYear, langId, rentDur, rate, length, repCost, rating,
						features, lang);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return film;
	}

	@Override
	public List<Film> searchByKeyword(String keyword) {
		List<Film> films = new ArrayList<>();
		try {
			Connection conn = DriverManager.getConnection(URL, USER, PASS);
			String sql = fullDataQuery + " WHERE film.title LIKE ? OR film.description LIKE ?";

			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, "%" + keyword + "%");
			stmt.setString(2, "%" + keyword + "%");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				int filmId = rs.getInt("film.id");
				String title = rs.getString("title");
				String desc = rs.getString("description");
				short releaseYear = rs.getShort("release_year");
				int langId = rs.getInt("language_id");
				int rentDur = rs.getInt("rental_duration");
				double rate = rs.getDouble("rental_rate");
				int length = rs.getInt("length");
				double repCost = rs.getDouble("replacement_cost");
				String rating = rs.getString("rating");
				String features = rs.getString("special_features");
				String lang = rs.getString("name");

				Film film = new Film(filmId, title, desc, releaseYear, langId, rentDur, rate, length, repCost, rating,
						features, lang);
				films.add(film);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return films;
	}

}
