package com.ict.erp.vo;

import org.apache.ibatis.type.Alias;

@Alias("hi")
public class HumanInfo {

	private Integer hinum;
	private String hiid;
	private String hipwd;
	private String hichpwd;
	private String hiname;
	private String hitrans;
	private String hiaddress;
	private String hiemail;
	private Integer hibirth;
	private Integer hiphone;
	
	public HumanInfo() {}

	public HumanInfo(Integer hinum, String hiid, String hipwd, String hichpwd, String hiname, String hitrans,
			String hiaddress, String hiemail, Integer hibirth, Integer hiphone) {
		super();
		this.hinum = hinum;
		this.hiid = hiid;
		this.hipwd = hipwd;
		this.hichpwd = hichpwd;
		this.hiname = hiname;
		this.hitrans = hitrans;
		this.hiaddress = hiaddress;
		this.hiemail = hiemail;
		this.hibirth = hibirth;
		this.hiphone = hiphone;
	}

	@Override
	public String toString() {
		return "HumanInfo [hinum=" + hinum + ", hiid=" + hiid + ", hipwd=" + hipwd + ", hichpwd=" + hichpwd
				+ ", hiname=" + hiname + ", hitrans=" + hitrans + ", hiaddress=" + hiaddress + ", hiemail=" + hiemail
				+ ", hibirth=" + hibirth + ", hiphone=" + hiphone + "]";
	}

	public Integer getHinum() {
		return hinum;
	}

	public void setHinum(Integer hinum) {
		this.hinum = hinum;
	}

	public String getHiid() {
		return hiid;
	}

	public void setHiid(String hiid) {
		this.hiid = hiid;
	}

	public String getHipwd() {
		return hipwd;
	}

	public void setHipwd(String hipwd) {
		this.hipwd = hipwd;
	}

	public String getHichpwd() {
		return hichpwd;
	}

	public void setHichpwd(String hichpwd) {
		this.hichpwd = hichpwd;
	}

	public String getHiname() {
		return hiname;
	}

	public void setHiname(String hiname) {
		this.hiname = hiname;
	}

	public String getHitrans() {
		return hitrans;
	}

	public void setHitrans(String hitrans) {
		this.hitrans = hitrans;
	}

	public String getHiaddress() {
		return hiaddress;
	}

	public void setHiaddress(String hiaddress) {
		this.hiaddress = hiaddress;
	}

	public String getHiemail() {
		return hiemail;
	}

	public void setHiemail(String hiemail) {
		this.hiemail = hiemail;
	}

	public Integer getHibirth() {
		return hibirth;
	}

	public void setHibirth(Integer hibirth) {
		this.hibirth = hibirth;
	}

	public Integer getHiphone() {
		return hiphone;
	}

	public void setHiphone(Integer hiphone) {
		this.hiphone = hiphone;
	}

	
	
}
