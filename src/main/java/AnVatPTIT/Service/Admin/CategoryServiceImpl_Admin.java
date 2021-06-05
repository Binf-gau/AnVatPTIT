package AnVatPTIT.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import AnVatPTIT.Dao.CategorysDao;
import AnVatPTIT.Dao.ProductsDao;
import AnVatPTIT.Dto.ProductsDto;
import AnVatPTIT.Entity.Categorys;

@Service
public class CategoryServiceImpl_Admin implements ICategoryService_Admin {

	@Autowired
	private ProductsDao productsDao;
	
	@Autowired
	private CategorysDao categorysDao;
	
	public List<ProductsDto> GetAllProductsByID(int id) {
		return productsDao.GetAllProductsByID(id);
	}
	
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		return productsDao.GetDataProductsPaginate(id, start, totalPage);
	}
	
	public Categorys GetCategoryByID(int id) {
		return categorysDao.GetCategoryByID(id);
	}

	public int EditCategory(Categorys category) {
		return categorysDao.EditCategory(category);
	}

	public int AddCategory(Categorys category) {
		return categorysDao.AddCategory(category);
	}

	public int DeleteCategory(int id) {
		return categorysDao.DeleteCategory(id);
	}
	
}
