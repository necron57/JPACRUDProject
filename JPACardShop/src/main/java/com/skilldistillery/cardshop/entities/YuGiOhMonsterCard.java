package com.skilldistillery.cardshop.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "yu_gi_oh_monster_card")
public class YuGiOhMonsterCard {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	@Column(name = "star_level")
	private int starLevel;
	
	@Column(name="monster_attribute")
	private String monsterAttribute;
	
	@Column(name="monster_type")
	private String monsterType;
	
	@Column(name="card_description")
	private String cardDescription;
	
	private int attack;
	
	private int defense;

	public YuGiOhMonsterCard() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getStarLevel() {
		return starLevel;
	}

	public void setStarLevel(int starLevel) {
		this.starLevel = starLevel;
	}

	public String getMonsterAttribute() {
		return monsterAttribute;
	}

	public void setMonsterAttribute(String monsterAttribute) {
		this.monsterAttribute = monsterAttribute;
	}

	public String getMonsterType() {
		return monsterType;
	}

	public void setMonsterType(String monsterType) {
		this.monsterType = monsterType;
	}

	public String getCardDescription() {
		return cardDescription;
	}

	public void setCardDescription(String cardDescription) {
		this.cardDescription = cardDescription;
	}

	public int getAttack() {
		return attack;
	}

	public void setAttack(int attack) {
		this.attack = attack;
	}

	public int getDefense() {
		return defense;
	}

	public void setDefense(int defense) {
		this.defense = defense;
	}

	@Override
	public String toString() {
		return "YuGiOhMonsterCard [id=" + id + ", name=" + name + ", starLevel=" + starLevel + ", monsterAttribute="
				+ monsterAttribute + ", monsterType=" + monsterType + ", cardDescription=" + cardDescription
				+ ", attack=" + attack + ", defense=" + defense + "]";
	}

	

}
