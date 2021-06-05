package AnVatPTIT.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import AnVatPTIT.Dto.ProductsDto;
import AnVatPTIT.Entity.Categorys;

@Service
public interface ICategoryService_Admin {
	public List<ProductsDto> GetAllProductsByID(int id);
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage);
	public Categorys GetCategoryByID(int id);
	public int EditCategory(Categorys category);
	public int AddCategory(Categorys category);
	public int DeleteCategory(int id);
}
