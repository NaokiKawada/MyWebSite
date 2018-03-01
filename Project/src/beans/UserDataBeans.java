package beans;

import java.io.Serializable;

public class UserDataBeans implements Serializable {
	private String name;
	private String address;
	private String loginId;
	private String password;
	private int id;

	// コンストラクタ
	public UserDataBeans() {
		this.name = "";
		this.address = "";
		this.loginId = "";
		this.password = "";
	}

	public UserDataBeans(String nameData, String loginIdData) {
        this.name = name;
    	this.loginId = loginId;
    	}

	public UserDataBeans(int idData, String nameDATA, String addressDATA, String login_idData) {
        this.id = idData;
    	this.name = nameDATA;
        this.address = addressDATA;
    	this.loginId = login_idData;

	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	/**
	 * ユーザー情報更新時の必要情報をまとめてセットするための処理
	 *
	 * @param name
	 * @param loginId
	 * @param address
	 */
	public void setUpdateUserDataBeansInfo(String name, String loginId, String address, int id) {
		this.name = name;
		this.loginId = loginId;
		this.address = address;
		this.id = id;
	}

}
