package beans;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BuyDataBeans  implements Serializable {
	private int id;
	private int userId;
	private int totalPrice;
	private int delivertMethodId;
	private Date buyDate;

	private String deliveryMethodName;
	private int deliveryMethodPrice;


	public BuyDataBeans(int id, int userId, int totalPrice, int delivertMethodId, Date buyDate,
			String deliveryMethodName, int deliveryMethodPrice) {
		this.id = id;
		this.userId = userId;
		this.totalPrice = totalPrice;
		this.delivertMethodId = delivertMethodId;
		this.buyDate = buyDate;
		this.deliveryMethodName = deliveryMethodName;
		this.deliveryMethodPrice = deliveryMethodPrice;
	}

	public BuyDataBeans(int buyIdData, Date buyDateData, String deliveryMethodnameData, int totalPriceData) {
		this.id = buyIdData;
		this.buyDate = buyDateData;
		this.deliveryMethodName = deliveryMethodnameData;
		this.totalPrice = totalPriceData;
		}


	public BuyDataBeans(int id, int totalPrice, Date buyDate,int delivertMethodId, int userId,
			int deliveryMethodPrice , String deliveryMethodName) {
		super();
		this.id = id;
		this.userId = userId;
		this.totalPrice = totalPrice;
		this.delivertMethodId = delivertMethodId;
		this.buyDate = buyDate;
		this.deliveryMethodName = deliveryMethodName;
		this.deliveryMethodPrice = deliveryMethodPrice;
	}

	public BuyDataBeans() {

	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}


	public int getDelivertMethodId() {
		return delivertMethodId;
	}
	public void setDelivertMethodId(int delivertMethodId) {
		this.delivertMethodId = delivertMethodId;
	}
	public Date getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}
	public String getDeliveryMethodName() {
		return deliveryMethodName;
	}
	public void setDeliveryMethodName(String deliveryMethodName) {
		this.deliveryMethodName = deliveryMethodName;
	}

	public String getFormatDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH時mm分");
		return sdf.format(buyDate);
	}
	public int getDeliveryMethodPrice() {
		return deliveryMethodPrice;
	}
	public void setDeliveryMethodPrice(int deliveryMethodPrice) {
		this.deliveryMethodPrice = deliveryMethodPrice;
	}


}
