package AnVatPTIT.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import AnVatPTIT.Dao.CategorysDao;
import AnVatPTIT.Dao.MenuDao;
import AnVatPTIT.Dao.ProductsDao;
import AnVatPTIT.Dao.SlidesDao;
import AnVatPTIT.Dto.ProductsDto;
import AnVatPTIT.Entity.Categorys;
import AnVatPTIT.Entity.Menus;
import AnVatPTIT.Entity.Slides;

@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategorysDao categoryDao;
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private ProductsDao productsDao;

	public List<Slides> GetDataSlide() {
		return slidesDao.GetDataSlide();
	}

	public List<Categorys> GetDataCategorys() {
		return categoryDao.GetDataCategorys();
	}

	public List<Menus> GetDataMenus() {
		return menuDao.GetDataMenus();
	}

	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		listProducts.get(0).getId_img();
		return listProducts;
	}

}