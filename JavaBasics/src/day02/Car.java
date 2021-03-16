package day02;

public class Car {
	private String type;
	private int price;

	public Car(String type, int price) {
		super();
		this.type = type;
		this.price = price;
	}

	public int calcTotal(int days) {
		return price*days;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
