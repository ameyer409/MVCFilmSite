package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.DAO.DatabaseAccessor;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private DatabaseAccessor filmDAO;

	@RequestMapping("")
	public String home() {
		return "home";
	}

	@RequestMapping(path = "/filmDetails.do", method = RequestMethod.GET)
	public ModelAndView showFilmDetails(@RequestParam("id") int filmId) {
		ModelAndView mv = new ModelAndView();

		Film film = filmDAO.findFilmById(filmId);
		System.out.println(film);
		if (film != null) {
			mv.addObject("film", film);
			mv.setViewName("filmDetails");
		} 
		return mv;
	}

//	@RequestMapping(value = "/filmDetails", method = RequestMethod.POST)
//	public ModelAndView showFilmDetailsPost(@RequestParam("id") int filmId) {
//		ModelAndView mv = new ModelAndView();
//
//		Film film = filmDAO.findFilmById(filmId);
//
//		if (film != null) {
//			mv.addObject("film", film);
//			mv.setViewName("home");
//		} 
//		return mv;
//	}
}
