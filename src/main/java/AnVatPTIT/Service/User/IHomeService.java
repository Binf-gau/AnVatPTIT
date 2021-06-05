package AnVatPTIT.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import AnVatPTIT.Dto.ProductsDto;
import AnVatPTIT.Entity.Categorys;
import AnVatPTIT.Entity.Menus;
import AnVatPTIT.Entity.Slides;

@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();

	public List<Categorys> GetDataCategorys();

	public List<Menus> GetDataMenus();

	public List<ProductsDto> GetDataProducts();
}