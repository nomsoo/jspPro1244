package cart.dto;

public class ProductDTO {
	
	private int idx; 
	private String name; 
	private int price;
	private String description ;
	private String picture_date; 
	private String img; //첨부파일
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPicture_date() {
		return picture_date;
	}
	public void setPicture_date(String picture_date) {
		this.picture_date = picture_date;
	}
}