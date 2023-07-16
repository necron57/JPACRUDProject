package com.skilldistillery.cardshop.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.cardshop.entities.YuGiOhMonsterCard;

@Service
@Transactional
public class CardShopDAOImpl implements CardShopDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public YuGiOhMonsterCard findById(int cardId) {
		return em.find(YuGiOhMonsterCard.class, cardId);
	}

	@Override
	public List<YuGiOhMonsterCard> findAll() {
		String jpql = "SELECT card FROM YuGiOhMonsterCard card";
		return em.createQuery(jpql, YuGiOhMonsterCard.class).getResultList();
	}

	@Override
	public YuGiOhMonsterCard create(YuGiOhMonsterCard card) {
		em.persist(card);

		em.flush();

		return card;
	}

	@Override
	public YuGiOhMonsterCard update(int cardId, YuGiOhMonsterCard card) {

		YuGiOhMonsterCard managed = em.find(YuGiOhMonsterCard.class, cardId);
		managed.setId(cardId);
		managed.setName(card.getName());
		managed.setStarLevel(card.getStarLevel());
		managed.setMonsterAttribute(card.getMonsterAttribute());
		managed.setMonsterType(card.getMonsterType());
		managed.setCardDescription(card.getCardDescription());
		managed.setAttack(card.getAttack());
		managed.setDefense(card.getDefense());
		em.merge(managed);
		em.flush();
		return managed;
	}

	@Override
	public boolean deleteById(int cardId) {

		YuGiOhMonsterCard cardToDelete = em.find(YuGiOhMonsterCard.class, cardId);

		if (cardToDelete != null) {
			em.remove(cardToDelete);
			em.flush();
		} else {
			return false;
		}

		return true;
	}

}
