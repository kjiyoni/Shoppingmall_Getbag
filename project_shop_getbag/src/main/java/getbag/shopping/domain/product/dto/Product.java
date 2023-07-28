package getbag.shopping.domain.product.dto;

/**
 * JavaBean 규약에 따라 만든 재사용 가능한 컴포넌트
 * 상품 정보
 * @author 홍재헌
 *
 */
public class Product {
	
//									   설명           		 - DB에 등록된 이름
	private String pid; 			// 상품 아이디    		 - procode
	private String pname; 			// 상품 이름      		 - proname
	private double price; 			// 상품 가격      		 - proprice
	private String description;		// 상품 설명      		 - proinfo
	private String color;			// 상품 색깔      		 - procolor
	private String brand; 			// 브랜드      	  		 - probrand
	private String category; 		// 분류(여성/남성) 		 - catename
	private String pimage; 			// 상품 이미지     		 - proimg
	private String pimageqty; 		// 상품 상세 이미지      - proimgqty
	private int quantitiy; 			// 장바구니에 담을 개수  - procount

	public Product() {}

	public Product(String pid, String pname, double price, String description, String color, String brand, String category,
			String pimage, String pimageqty, int quantitiy) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.price = price;
		this.description = description;
		this.color = color;
		this.brand = brand;
		this.category = category;
		this.pimage = pimage;
		this.pimageqty = pimageqty;
		this.quantitiy = quantitiy;
	}
	
	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	
	public String getPimageqty() {
		return pimageqty;
	}

	public void setPimageqty(String pimageqty) {
		this.pimageqty = pimageqty;
	}

	public int getQuantitiy() {
		return quantitiy;
	}

	public void setQuantitiy(int quantitiy) {
		this.quantitiy = quantitiy;
	}

	@Override
	public String toString() {
		return "Product [상품 아이디=" + pid + ", 상품 이름=" + pname + ", 상품 가격=" + price + ", 상품 설명=" + description + ", 상품 색깔=" + color
				+ ", 브랜드=" + brand + ", 분류(여성/남성)=" + category + ", 상품 이미지=" + pimage + ", 상품 상세 이미지=" + pimageqty + ", 장바구니 담은 갯수=" + quantitiy
				+ "]";
	}
	
}
