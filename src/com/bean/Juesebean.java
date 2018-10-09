package com.bean;

public class Juesebean 
{
	private int id;
	private String name;
	private int tianbao;
	private int chakangerenshenhexuqiu;
	private int chakanquanbushenhexuqiu;
	private int xuqiuxiugai;
	private int chakanquanbu;
	private int chakangeren;
	private int chakantuihui;
	private int shenhexuqiu;
	private int chakanuser;
	private int xinxixiugai;
	private int mimaxiugai;
	
	
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
	public int getTianbao() {
		return tianbao;
	}
	public void setTianbao(int tianbao) {
		this.tianbao = tianbao;
	}
	public int getChakanquanbu() {
		return chakanquanbu;
	}
	public void setChakanquanbu(int chakanquanbu) {
		this.chakanquanbu = chakanquanbu;
	}
	
	public int getChakantuihui() {
		return chakantuihui;
	}
	public void setChakantuihui(int chakantuihui) {
		this.chakantuihui = chakantuihui;
	}
	public int getShenhexuqiu() {
		return shenhexuqiu;
	}
	public void setShenhexuqiu(int shenhexuqiu) {
		this.shenhexuqiu = shenhexuqiu;
	}
	public int getChakanuser() {
		return chakanuser;
	}
	public void setChakanuser(int chakanuser) {
		this.chakanuser = chakanuser;
	}
	public int getXinxixiugai() {
		return xinxixiugai;
	}
	public void setXinxixiugai(int xinxixiugai) {
		this.xinxixiugai = xinxixiugai;
	}
	public int getMimaxiugai() {
		return mimaxiugai;
	}
	public void setMimaxiugai(int mimaxiugai) {
		this.mimaxiugai = mimaxiugai;
	}
	
	public int getChakangerenshenhexuqiu() {
		return chakangerenshenhexuqiu;
	}
	public void setChakangerenshenhexuqiu(int chakangerenshenhexuqiu) {
		this.chakangerenshenhexuqiu = chakangerenshenhexuqiu;
	}
	public int getChakanquanbushenhexuqiu() {
		return chakanquanbushenhexuqiu;
	}
	public void setChakanquanbushenhexuqiu(int chakanquanbushenhexuqiu) {
		this.chakanquanbushenhexuqiu = chakanquanbushenhexuqiu;
	}
	public int getXuqiuxiugai() {
		return xuqiuxiugai;
	}
	public void setXuqiuxiugai(int xuqiuxiugai) {
		this.xuqiuxiugai = xuqiuxiugai;
	}
	public int getChakangeren() {
		return chakangeren;
	}
	public void setChakangeren(int chakangeren) {
		this.chakangeren = chakangeren;
	}
	@Override
	public String toString() {
		return "Juesebean [id=" + id + ", name=" + name + ", tianbao=" + tianbao + ", chakangerenshenhexuqiu="
				+ chakangerenshenhexuqiu + ", chakanquanbushenhexuqiu=" + chakanquanbushenhexuqiu + ", xuqiuxiugai="
				+ xuqiuxiugai + ", chakanquanbu=" + chakanquanbu + ", chakangeren=" + chakangeren + ", chakantuihui="
				+ chakantuihui + ", shenhexuqiu=" + shenhexuqiu + ", chakanuser=" + chakanuser + ", xinxixiugai="
				+ xinxixiugai + ", mimaxiugai=" + mimaxiugai + "]";
	}
	public Juesebean(){};
	public Juesebean(String name, int tianbao, int chakangerenshenhexuqiu, int chakanquanbushenhexuqiu, int xuqiuxiugai,
			int chakanquanbu, int chakangeren, int chakantuihui, int shenhexuqiu, int chakanuser, int xinxixiugai,
			int mimaxiugai) {
		super();
		this.name = name;
		this.tianbao = tianbao;
		this.chakangerenshenhexuqiu = chakangerenshenhexuqiu;
		this.chakanquanbushenhexuqiu = chakanquanbushenhexuqiu;
		this.xuqiuxiugai = xuqiuxiugai;
		this.chakanquanbu = chakanquanbu;
		this.chakangeren = chakangeren;
		this.chakantuihui = chakantuihui;
		this.shenhexuqiu = shenhexuqiu;
		this.chakanuser = chakanuser;
		this.xinxixiugai = xinxixiugai;
		this.mimaxiugai = mimaxiugai;
	}
	
	

}
