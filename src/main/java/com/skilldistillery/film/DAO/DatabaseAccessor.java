package com.skilldistillery.film.DAO;

import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface DatabaseAccessor {
	public Film findFilmById(int filmId);

	public Actor findActorById(int actorId);

	public List<Actor> findActorsByFilmId(int filmId);

	public Film findFilmByKeyword(String keyword);

	public List<Film> findFilmsByKeyword(String keyword);

	public Film createFilm(Film newFilm);

	public boolean deleteFilm(Film addedFilm);

	boolean updateFilm(Film film);
}
