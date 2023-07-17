package com.skilldistillery.cardshop.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.skilldistillery.cardshop.data.CardShopDAO;
import com.skilldistillery.cardshop.entities.YuGiOhMonsterCard;

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
		if(shopDAO.findAll() == null) {
			return"cardSearchError";
		}
		return "card/view";
	}

	@RequestMapping(path = "showCard.do", params = "cardId")
	public String showCardById(Model model, int cardId) {

		model.addAttribute("card", shopDAO.findById(cardId));
		if(shopDAO.findById(cardId) == null) {
			return "cardSearchError";
		}

		return "card/view";
	}
	
	@RequestMapping(path= "createCard.do")
	public String createCard(Model model) {
		return "card/createCard";
	}

	@RequestMapping(path = "addCard.do")
	public String addCard(Model model, YuGiOhMonsterCard card) {
		shopDAO.create(card);
		model.addAttribute("card", card);
		return "home";
	}

	@RequestMapping(path = "updateCard.do")
	public String updateCard(Model model, YuGiOhMonsterCard card, int cardId) {
		shopDAO.update(cardId, card);
		model.addAttribute("card", card);

		return "home";
	}

	@RequestMapping(path = { "deleteCard.do" }, params = "cardId")
	public String deleteCard(Model model, @RequestParam Integer cardId) {
		shopDAO.deleteById(cardId);
		
		return "card/delete";
	}

}
