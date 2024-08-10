package com.entity;

public class TVSpartOrderDtls {
	
	private String orderId;
	private String userName;
	private String email;
	private String fullAdd;
	private String phno;
	private String partDescription;
	private String quantity;
	private String partNumber;
	private String rate;
	private String amount;
	private String paymentType;
	public TVSpartOrderDtls() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFullAdd() {
		return fullAdd;
	}
	public void setFullAdd(String fullAdd) {
		this.fullAdd = fullAdd;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getPartDescription() {
		return partDescription;
	}
	public void setPartDescription(String partDescription) {
		this.partDescription = partDescription;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getPartNumber() {
		return partNumber;
	}
	public void setPartNumber(String partNumber) {
		this.partNumber = partNumber;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}
	@Override
	public String toString() {
		return "BajajpartOrderDtls [orderId=" + orderId + ", userName=" + userName + ", email=" + email + ", fullAdd="
				+ fullAdd + ", phno=" + phno + ", partDescription=" + partDescription + ", quantity=" + quantity
				+ ", partNumber=" + partNumber + ", rate=" + rate + ", amount=" + amount + ", paymentType="
				+ paymentType + "]";
	}
	




}
