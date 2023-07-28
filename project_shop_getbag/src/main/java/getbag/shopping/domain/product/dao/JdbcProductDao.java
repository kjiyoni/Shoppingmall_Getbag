package getbag.shopping.domain.product.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import getbag.shopping.domain.product.dto.Product;

/**
 * RDB를 통해 상품 저장 및 관리(검색, 수정, 삭제) 구현체
 * @author 홍재헌
 */
public class JdbcProductDao implements ProductDao {
	
	/**
	 * 신규상품 등록
	 */
	public boolean create(Connection connection,  Product product){
		boolean success = false;
		StringBuilder sb = new StringBuilder();
		sb.append(" INSERT INTO product (")
		  .append("  procode,")
		  .append("  catename,")
		  .append("  proname,")
		  .append("  proprice,")
		  .append("  proimg,")
		  .append("  proimgqty,")
		  .append("  proinfo,")
		  .append("  procolor,")
		  .append("  probrand,")
		  .append("  procount")
		  .append(" ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
		
		PreparedStatement pstmt = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			pstmt.setString(1, product.getPid());
			pstmt.setString(2, product.getCategory());
			pstmt.setString(3, product.getPname());
			pstmt.setString(4, String.valueOf(product.getPrice()));
			pstmt.setString(5, product.getPimage());
			pstmt.setString(6, product.getPimageqty());
			pstmt.setString(7, product.getDescription());
			pstmt.setString(8, product.getColor());
			pstmt.setString(9, product.getBrand());
			pstmt.setString(10, String.valueOf(product.getQuantitiy()));
			pstmt.executeUpdate();
			success = true;
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return success;
	}
	
	public Product findByName(Connection connection, String proname) {
		Product product = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT * FROM team.product")
		  .append(" WHERE proname = ?");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			pstmt.setString(1, proname);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				String id = rs.getString("procode");
				String name = rs.getString("proname");
				String price = rs.getString("proprice");
				String description = rs.getString("proinfo");
				String color = rs.getString("procolor");
				String brand = rs.getString("probrand");
				String category = rs.getString("catename");
				String image = rs.getString("proimg");
				String imageqty = rs.getString("proimgqty");
				String quantitiy = rs.getString("procount");
				product = new Product();
				product.setPid(id);
				product.setPname(name);
				product.setPrice(Double.valueOf(price));
				product.setDescription(description);
				product.setColor(color);
				product.setBrand(brand);
				product.setCategory(category);
				product.setPimage(image);
				product.setPimageqty(imageqty);
				product.setQuantitiy(Integer.valueOf(quantitiy));
			}
			
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return product;
	}
	
	public Product findByNum(Connection connection, String procode) {
		Product product = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT * FROM team.product")
		  .append(" WHERE procode = ?");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			pstmt.setString(1, procode);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				String id = rs.getString("procode");
				String name = rs.getString("proname");
				String price = rs.getString("proprice");
				String description = rs.getString("proinfo");
				String color = rs.getString("procolor");
				String brand = rs.getString("probrand");
				String category = rs.getString("catename");
				String image = rs.getString("proimg");
				String imageqty = rs.getString("proimgqty");
				String quantitiy = rs.getString("procount");
				product = new Product();
				product.setPid(id);
				product.setPname(name);
				product.setPrice(Double.valueOf(price));
				product.setDescription(description);;
				product.setColor(color);
				product.setBrand(brand);
				product.setCategory(category);
				product.setPimage(image);
				product.setPimageqty(imageqty);
				product.setQuantitiy(Integer.valueOf(quantitiy));
			}
			
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return product;
	}
	
	@Override
	public List<Product> findByAll(Connection connection) {
		List<Product> list = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT * FROM team.product");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Product product = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			list = new ArrayList<Product>();
			while (rs.next()) {			
				String id = rs.getString("procode");
				String name = rs.getString("proname");
				String price = rs.getString("proprice");
				String description = rs.getString("proinfo");
				String color = rs.getString("procolor");
				String brand = rs.getString("probrand");
				String category = rs.getString("catename");
				String image = rs.getString("proimg");
				String imageqty = rs.getString("proimgqty");
				String quantitiy = rs.getString("procount");
				product = new Product();
				product.setPid(id);
				product.setPname(name);
				product.setPrice(Double.valueOf(price));
				product.setDescription(description);;
				product.setColor(color);
				product.setBrand(brand);
				product.setCategory(category);
				product.setPimage(image);
				product.setPimageqty(imageqty);
				product.setQuantitiy(Integer.valueOf(quantitiy));
				list.add(product);
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return list;
	}
	
}


















