package beans;

import java.io.Serializable;

public class ItemDataBeans implements Serializable {
	private int id;
	private String name;
	private String detail;
	private int price;
	private String fileName;


	public ItemDataBeans(int idData, String nameDATA, String detailDATA, int priceData, String fileNameDATA) {
        this.id = idData;
    	this.name = nameDATA;
        this.detail = detailDATA;
    	this.price = priceData;
    	this.fileName = fileNameDATA;
	}
	public ItemDataBeans() {
		// TODO 自動生成されたコンストラクター・スタブ
	}
	public int getId() {
		return id;
	}
	public void setId(int itemId) {
		this.id = itemId;
	}
	public String getName() {
		return name;
	}
	public void setName(String itemName) {
		this.name = itemName;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int itemPrice) {
		this.price = itemPrice;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String filename) {
		this.fileName = filename;
	}




}
