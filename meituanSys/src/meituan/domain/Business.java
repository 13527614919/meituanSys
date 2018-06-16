package meituan.domain;

import java.io.Serializable;

public class Business implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String bId;
	private String bPassword;
	private String bPhone;
	private String bPhoneAddress;
	public String getbId() {
		return bId;
	}
	public void setbId(String bId) {
		this.bId = bId;
	}
	public String getbPassword() {
		return bPassword;
	}
	public void setbPassword(String bPassword) {
		this.bPassword = bPassword;
	}
	public String getbPhone() {
		return bPhone;
	}
	public void setbPhone(String bPhone) {
		this.bPhone = bPhone;
	}
	public String getbPhoneAddress() {
		return bPhoneAddress;
	}
	public void setbPhoneAddress(String bPhoneAddress) {
		this.bPhoneAddress = bPhoneAddress;
	}
	
	
}
