package com.pojo;

// Generated 1 Jun, 2019 9:27:09 PM by Hibernate Tools 3.4.0.CR1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Property generated by hbm2java
 */
public class Property implements java.io.Serializable {

	private Integer pid;
	private City city;
	private Category category;
	private Register register;
	private String propertyname;
	private String size;
	private Double price;
	private String address;
	private String description;
	private String bedroom;
	private String bathroom;
	private String pimage;
	private Date pdate;
	private Date udatedDate;
	private Set enquiries = new HashSet(0);

	public Property() {
	}

	public Property(City city, Category category, Register register, String propertyname, String size, Double price,
			String address, String description, String bedroom, String bathroom, String pimage, Date pdate,
			Date udatedDate, Set enquiries) {
		this.city = city;
		this.category = category;
		this.register = register;
		this.propertyname = propertyname;
		this.size = size;
		this.price = price;
		this.address = address;
		this.description = description;
		this.bedroom = bedroom;
		this.bathroom = bathroom;
		this.pimage = pimage;
		this.pdate = pdate;
		this.udatedDate = udatedDate;
		this.enquiries = enquiries;
	}

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public City getCity() {
		return this.city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Register getRegister() {
		return this.register;
	}

	public void setRegister(Register register) {
		this.register = register;
	}

	public String getPropertyname() {
		return this.propertyname;
	}

	public void setPropertyname(String propertyname) {
		this.propertyname = propertyname;
	}

	public String getSize() {
		return this.size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getBedroom() {
		return this.bedroom;
	}

	public void setBedroom(String bedroom) {
		this.bedroom = bedroom;
	}

	public String getBathroom() {
		return this.bathroom;
	}

	public void setBathroom(String bathroom) {
		this.bathroom = bathroom;
	}

	public String getPimage() {
		return this.pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}

	public Date getPdate() {
		return this.pdate;
	}

	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}

	public Date getUdatedDate() {
		return this.udatedDate;
	}

	public void setUdatedDate(Date udatedDate) {
		this.udatedDate = udatedDate;
	}

	public Set getEnquiries() {
		return this.enquiries;
	}

	public void setEnquiries(Set enquiries) {
		this.enquiries = enquiries;
	}

}
