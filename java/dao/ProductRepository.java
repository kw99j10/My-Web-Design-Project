package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
	
	public ArrayList<Product>listOfProducts=new ArrayList<Product>();
	
	private static ProductRepository instance=new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		Product uniform1=new Product("R1","2022-23 시즌 유니폼 킷-Home",129000);
	
		uniform1.setManufacturer("Adidas");
		uniform1.setUnitsInStock(500);
		uniform1.setFilename("R1.png");
		
		Product uniform2=new Product("R2","2022-23 시즌 유니폼 킷-Away",119000);
		uniform2.setManufacturer("Adidas");
		uniform2.setUnitsInStock(1000);
		uniform2.setFilename("R2.png");
		
		Product uniform3=new Product("R3","2022-23 시즌 유니폼 킷-Third",119000);
		uniform3.setManufacturer("Adidas");
		uniform3.setUnitsInStock(2000);
		uniform3.setFilename("R3.png");
		
		listOfProducts.add(uniform1);
		listOfProducts.add(uniform2);
		listOfProducts.add(uniform3);
	}
	
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById=null;
		
		for(int i=0;i<listOfProducts.size();i++) {
			Product product=listOfProducts.get(i);
			if(product!=null&&product.getProductId()!=null&&
					product.getProductId().equals(productId)) {
				productById=product;
				break;
			}	
		}
		return productById;
	}

}
