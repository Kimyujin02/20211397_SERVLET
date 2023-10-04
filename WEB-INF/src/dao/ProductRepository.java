package dao;
import java.util.ArrayList;
import dto.Product; // dao기준으로 외부 서버를 가져오는 것임

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅

	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 14pro", 1564000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
        
        Product notebook = new Product("P1235", "MacBook Air 13", 1590000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("Apple");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");

		Product ipad = new Product("P1236", "iPad Pro", 1249000);
		ipad.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		ipad.setCategory("Tablet");
		ipad.setManufacturer("Apple");
		ipad.setUnitsInStock(1000);
		ipad.setCondition("Old");
		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(ipad);
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
    
    public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}

}

