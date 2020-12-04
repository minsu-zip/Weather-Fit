package dto;

import java.io.Serializable;

public class Dress implements Serializable {
	
	private String dressId; //dress ���̵�
	private String title; //dress ����
	private String description; //dress ����
	private String image;	//dress �̹���
	private int quantity;	//��ٱ����� ���� ����
	
	public Dress() {
		super();
	}
	
	//������
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
