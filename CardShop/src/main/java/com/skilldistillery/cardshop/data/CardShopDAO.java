package com.skilldistillery.cardshop.data;

import java.util.List;

import com.skilldistillery.cardshop.entities.YuGiOhMonsterCard;

public interface CardShopDAO {
	
	YuGiOhMonsterCard findById(int cardid);
	List<YuGiOhMonsterCard> findAll();
	YuGiOhMonsterCard create(YuGiOhMonsterCard card);
	YuGiOhMonsterCard update(int cardId, YuGiOhMonsterCard card);
	boolean deleteById(int cardid);
	
	

}
