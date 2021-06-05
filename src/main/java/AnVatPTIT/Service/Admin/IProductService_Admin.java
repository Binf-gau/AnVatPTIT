package AnVatPTIT.Service.Admin;

import org.springframework.stereotype.Service;

import AnVatPTIT.Dto.ProductsDto;

@Service
public interface IProductService_Admin {
	public int AddProduct(ProductsDto product);
	public int AddImage(ProductsDto product);
	public int DeleteProduct(long id);
	public ProductsDto FindProductById(long id);
	public int EditProduct(ProductsDto product);
	public int EditImage(ProductsDto product);
}
