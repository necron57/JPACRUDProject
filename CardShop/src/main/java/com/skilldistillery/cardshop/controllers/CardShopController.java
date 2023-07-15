package com.skilldistillery.cardshop.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.cardshop.data.CardShopDAO;

@Controller
public class CardShopController {

	@Autowired
	private CardShopDAO shopDAO;

	@RequestMapping(path = { "/", "home.do" })
	public String goHome() {

		return "home";
	}

	@RequestMapping(path = "showCard.do")
	public String showCard(Model model) {
		model.addAttribute("cardList", shopDAO.findAll());
		return "view";
	}
	
	@RequestMapping(path="createCard.do")
	public ModelAndView addCard() {
		
		
		
		return null;
	}

	@RequestMapping(path = { "deleteCard.do" }, params = "cardId")
	public ModelAndView deleteCard(@RequestParam Integer cardId) {

		boolean createdCard = shopDAO.deleteById(cardId);

		ModelAndView mv = new ModelAndView();

		mv.setViewName("delete");
		mv.addObject("card", createdCard);

		return mv;
	}

}
