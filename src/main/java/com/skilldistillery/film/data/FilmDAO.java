package com.skilldistillery.film.data;

import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface FilmDAO {
	Film findById(String filmId);

	List<Film> searchByKeyword(String keyword);

	List<Actor> findActorsByFilmId(String filmId);
}
