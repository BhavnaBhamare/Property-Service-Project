package com.pojo;

// Generated 1 Jun, 2019 9:27:09 PM by Hibernate Tools 3.4.0.CR1

import java.util.Date;

/**
 * Postfeedback generated by hbm2java
 */
public class Postfeedback implements java.io.Serializable {

	private Integer feedid;
	private String feedname;
	private String feedemail;
	private String feedmsg;
	private Date feeddate;

	public Postfeedback() {
	}

	public Postfeedback(String feedname, String feedemail, String feedmsg, Date feeddate) {
		this.feedname = feedname;
		this.feedemail = feedemail;
		this.feedmsg = feedmsg;
		this.feeddate = feeddate;
	}

	public Integer getFeedid() {
		return this.feedid;
	}

	public void setFeedid(Integer feedid) {
		this.feedid = feedid;
	}

	public String getFeedname() {
		return this.feedname;
	}

	public void setFeedname(String feedname) {
		this.feedname = feedname;
	}

	public String getFeedemail() {
		return this.feedemail;
	}

	public void setFeedemail(String feedemail) {
		this.feedemail = feedemail;
	}

	public String getFeedmsg() {
		return this.feedmsg;
	}

	public void setFeedmsg(String feedmsg) {
		this.feedmsg = feedmsg;
	}

	public Date getFeeddate() {
		return this.feeddate;
	}

	public void setFeeddate(Date feeddate) {
		this.feeddate = feeddate;
	}

}
