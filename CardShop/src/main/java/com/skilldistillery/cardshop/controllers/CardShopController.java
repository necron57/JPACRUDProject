package com.skilldistillery.cardshop.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.cardshop.data.CardShopDAO;

@Controller
public class CardShopController {

	@Autowired
	private CardShopDAO shopDAO;

	@RequestMapping(path = { "/", "home.do" })
	public String goHome(Model model) {
		model.addAttribute("cardList", shopDAO.findAll());
		
		return "home";
	}
}
