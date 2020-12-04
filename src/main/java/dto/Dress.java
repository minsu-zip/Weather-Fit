package dto;

import java.io.Serializable;

public class Dress implements Serializable {
	
	private String dressId; //dress 아이디
	private String title; //dress 제목
	private String description; //dress 설명
	private String image;	//dress 이미지
	private int quantity;	//장바구나에 담은 개수
	
	public Dress() {
		super();
	}
	
	//생성자
	public Dress(String dressId, String title) {
		this.dressId = dressId;
		this.title = title;	
	}
	
	//getter
	public String getDressId() {
		return dressId;
	}
	
	public String getTitle() {
		return title;
	}
	

	public String getDescription() {
		return description;
	}
	
	
	public String getImage() {
		return image;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	
	//setter
	
	public void setDressId(String dressId) {
		this.dressId = dressId;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
