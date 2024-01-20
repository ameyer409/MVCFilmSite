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
		//System.out.println(film);
		if (film != null) {
			mv.addObject("film", film);
			mv.setViewName("filmDetails");
		} 
		return mv;
	}

	@RequestMapping(path = "deleteFilm.do", method = RequestMethod.GET)
	public ModelAndView deleteFilm(@RequestParam("id") int filmId, Model model) {
		
		Film filmToDelete = filmDAO.findFilmById(filmId);		
		Boolean deleteMessage = filmDAO.deleteFilm(filmToDelete);
		
		ModelAndView mv = new ModelAndView();
		
		if(deleteMessage.equals("Film deleted successfully!")) {
			mv.setViewName("home");
		} else {
			mv.addObject("errorMessage", deleteMessage);
			mv.setViewName("error");
		}
		return mv;

	}
	

}
