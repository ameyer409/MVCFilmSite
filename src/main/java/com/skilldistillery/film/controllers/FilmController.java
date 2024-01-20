package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

	@RequestMapping(path = "NewFilm.do", method = RequestMethod.POST)
	public ModelAndView addFilm(Film film, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		filmDAO.createFilm(film);
		redir.addFlashAttribute("film", film);
		mv.setViewName("redirect:filmAdded.do");
		return mv;
	}

	@RequestMapping(path = "filmAdded.do", method = RequestMethod.GET)
	public ModelAndView addStateRedirect(Film film) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}

	@RequestMapping(path = "filmDetails.do", method = RequestMethod.GET)
	public ModelAndView showFilmDetails(@RequestParam("id") int filmId) {
		ModelAndView mv = new ModelAndView();

		Film film = filmDAO.findFilmById(filmId);
		if (film != null) {
			mv.addObject("film", film);
			mv.setViewName("filmDetails");
		}
		return mv;
	}

	@RequestMapping(path = "updateFilm.do", method = RequestMethod.GET)
	public ModelAndView updateFilmDetails(@RequestParam("filmId") int filmId) {
		ModelAndView mv = new ModelAndView();

		Film film = filmDAO.findFilmById(filmId);
		System.out.println(film);
		mv.addObject("film", film);
		mv.setViewName("filmEdit");
		return mv;
	}

	@RequestMapping(path = "editFilm.do", method = RequestMethod.GET)
	public ModelAndView editFilmDetails(Film film) {
		ModelAndView mv = new ModelAndView();
		System.out.println(film);
		System.out.println("********* Before Update");
		boolean updated = filmDAO.updateFilm(film);
		if (updated) {
			System.out.println("********* Update True");
			mv.addObject("film", film);
		} else {
			System.out.println("********* Update False");
			film = null;
			mv.addObject("film", film);
		}
		mv.setViewName("filmEditComplete");
		return mv;
	}

	@RequestMapping(path = "deleteFilm.do", method = RequestMethod.GET)
	public ModelAndView deleteFilm(@RequestParam("id") int filmId) {

		Film filmToDelete = filmDAO.findFilmById(filmId);
		Boolean deleteMessage = filmDAO.deleteFilm(filmToDelete);

		ModelAndView mv = new ModelAndView();

		mv.addObject("errorMessage", deleteMessage);
		mv.setViewName("error");
		return mv;

	}

}
