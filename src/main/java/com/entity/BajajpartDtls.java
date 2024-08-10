package com.entity;

public class BajajpartDtls {

	private int partId;
	private String partDescription;
	private String partNumber;
	private String quantity;
	private String price;
	private String categories;
	private String status;
	private String photoName;
	private String email;
	public BajajpartDtls() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BajajpartDtls(String partDescription, String partNumber, String quantity, String price, String categories,
			String status, String photoName, String email) {
		super();
		this.partDescription = partDescription;
		this.partNumber = partNumber;
		this.quantity = quantity;
		this.price = price;
		this.categories = categories;
		this.status = status;
		this.photoName = photoName;
		this.email = email;
	}
	public int getPartId() {
		return partId;
	}
	public void setPartId(int partId) {
		this.partId = partId;
	}
	public String getPartDescription() {
		return partDescription;
	}
	public void setPartDescription(String partDescription) {
		this.partDescription = partDescription;
	}
	public String getPartNumber() {
		return partNumber;
	}
	public void setPartNumber(String partNumber) {
		this.partNumber = partNumber;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCategories() {
		return categories;
	}
	public void setCategories(String categories) {
		this.categories = categories;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "BajajpartDtls [partId=" + partId + ", partDescription=" + partDescription + ", partNumber=" + partNumber
				+ ", quantity=" + quantity + ", price=" + price + ", categories=" + categories + ", status=" + status
				+ ", photoName=" + photoName + ", email=" + email + "]";
	}
	
	
	
}
