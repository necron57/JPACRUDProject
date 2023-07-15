package com.skilldistillery.cardshop.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
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
		return null;
	}

	@Override
	public YuGiOhMonsterCard update(int cardId, YuGiOhMonsterCard card) {
		return null;
	}

	@Override
	public boolean deleteById(int cardId) {
		String jpql = "DELETE FROM YuGiOhMonsterCard AS card WHERE card.id = :cardIdToDelete";
		TypedQuery<YuGiOhMonsterCard> cardDeleted = em.createQuery(jpql, YuGiOhMonsterCard.class)
				.setParameter("cardIdToDelete", cardId);

		if (cardDeleted != null) {
			em.remove(cardDeleted);
		} else {

			return false;
		}
		return true;
	}

}
