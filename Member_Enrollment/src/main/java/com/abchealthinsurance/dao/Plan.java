package com.abchealthinsurance.dao;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Plan {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long plan_id;
	private String plan_name;
	private int cost;
	private String state;
	private String feature;
	private String opt_code;

	public Long getPlan_id() {
		return plan_id;
	}

	public void setPlan_id(Long plan_id) {
		this.plan_id = plan_id;
	}

	public String getPlan_name() {
		return plan_name;
	}

	public void setPlan_name(String plan_name) {
		this.plan_name = plan_name;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getFeature() {
		return feature;
	}

	public void setFeature(String feature) {
		this.feature = feature;
	}

	public String getOpt_code() {
		return opt_code;
	}

	public void setOpt_code(String opt_code) {
		this.opt_code = opt_code;
	}

}
