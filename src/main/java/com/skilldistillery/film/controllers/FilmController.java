package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;

@Controller
public class FilmController {

	@Autowired
	private FilmDAO filmDAO;

	@RequestMapping(path = { "home.do", "/" })
	public String goodHome() {
		return "WEB-INF/home.jsp";
	}
	
	@RequestMapping(path = "findById.do", method = RequestMethod.GET, params = "filmId")
	public ModelAndView findById(int filmId) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("film", filmDAO.findById(filmId));
		mv.setViewName("WEB-INF/FilmInfo.jsp");
		return mv;
	}
	@RequestMapping(path = "searchByKeyword.do", method = RequestMethod.GET, params = "keyword")
	public ModelAndView searchByKeyword(String keyword) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("film", filmDAO.searchByKeyword(keyword));
		mv.setViewName("WEB-INF/FilmsInfo.jsp");
		return mv;
	}

}
