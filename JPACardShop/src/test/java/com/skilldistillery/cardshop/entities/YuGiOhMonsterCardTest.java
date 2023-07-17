package com.skilldistillery.cardshop.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class YuGiOhMonsterCardTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private YuGiOhMonsterCard monsterCard;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPACardShop");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		monsterCard = em.find(YuGiOhMonsterCard.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		monsterCard = null;
	}

	@Test
	void test_CardShop_entity_mapping() {
		assertNotNull(monsterCard);
		assertEquals("Dark Magician", monsterCard.getName());
		assertEquals("spellcaster", monsterCard.getMonsterType());
		assertEquals("dark", monsterCard.getMonsterAttribute());
		assertEquals(2500, monsterCard.getAttack());
		assertEquals("https://ms.yugipedia.com//0/0a/DarkMagician-LOB-EN-UR-UE-25thAnniversaryEdition.png", monsterCard.getImageUrl());
	
	}

}
