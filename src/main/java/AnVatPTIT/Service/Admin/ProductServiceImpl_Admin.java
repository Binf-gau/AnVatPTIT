package AnVatPTIT.Service.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import AnVatPTIT.Dao.ProductsDao;
import AnVatPTIT.Dto.ProductsDto;

@Service
public class ProductServiceImpl_Admin implements IProductService_Admin {
	@Autowired
	ProductsDao productsDao = new ProductsDao();
	
	public int AddProduct(ProductsDto product) {
		return productsDao.AddProduct(product);
	}

	public int AddImage(ProductsDto product) {
		product.setId_product(productsDao.GetIDLastProducts());
		return productsDao.AddImage(product);
	}

	public int DeleteProduct(long id) {
		return productsDao.DeleteProduct(id);
	}

	public ProductsDto FindProductById(long id) {
		return productsDao.FindProductByID(id);
	}

	public int EditProduct(ProductsDto product) {
		return productsDao.EditProduct(product);
	}

	public int EditImage(ProductsDto product) {
		return productsDao.EditImage(product);
	}
}
