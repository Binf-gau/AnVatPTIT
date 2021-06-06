package AnVatPTIT.Controller.Admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import AnVatPTIT.Dto.PaginatesDto;
import AnVatPTIT.Dto.ProductsDto;
import AnVatPTIT.Service.Admin.CategoryServiceImpl_Admin;
import AnVatPTIT.Service.Admin.IProductService_Admin;
import AnVatPTIT.Service.Admin.PaginateServiceImpl_Admin;
import AnVatPTIT.Service.Admin.ProductServiceImpl_Admin;

@Controller
public class ProductsController_Admin extends BaseController_Admin {
	
	@Autowired
	IProductService_Admin productService = new ProductServiceImpl_Admin();
	
	@Autowired
	private CategoryServiceImpl_Admin categoryService;
    
	@Autowired
	private PaginateServiceImpl_Admin paginateService;
	
	private int totalProductsPage = 4;
	
	@RequestMapping(value = "admin/san-pham/{id}")
	public ModelAndView Product(@PathVariable String id) {
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("admin/products/products");
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, 1);
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsPaginate(Integer.parseInt(id), paginateInfo.getStart(), totalProductsPage));
		_mvShare.addObject("category", categoryService.GetCategoryByID(Integer.parseInt(id)));
		return _mvShare;
	}
	
	@RequestMapping(value = "admin/san-pham/{id}/{currentPage}")
	public ModelAndView Product(@PathVariable String id, @PathVariable String currentPage) {
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("admin/products/products");
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, Integer.parseInt(currentPage));
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsPaginate(Integer.parseInt(id) ,paginateInfo.getStart(), totalProductsPage));
		_mvShare.addObject("category", categoryService.GetCategoryByID(Integer.parseInt(id)));
		return _mvShare;
	}
	
	@RequestMapping(value = "admin/xoa-san-pham/{id}")
	public String DeleteProduct(HttpServletRequest request, @PathVariable long id) {
		productService.DeleteProduct(id);
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = "/admin/sua-san-pham/{id}", method = RequestMethod.GET)
	public ModelAndView SuaSanPham(@PathVariable long id) {
		ProductsDto product = new ProductsDto();
		product = productService.FindProductById(id);
		_mvShare.addObject("product", product);
		_mvShare.setViewName("admin/products/edit_product");
		return _mvShare;
	}
	
	@RequestMapping(value = "/admin/sua-san-pham/{id}", method = RequestMethod.POST)
	public String EditProduct(@ModelAttribute("product") ProductsDto product, HttpServletRequest request, @PathVariable long id) {
		ProductsDto productOld = new ProductsDto();
		productOld = productService.FindProductById(id);
		product.setId_product(productOld.getId_product());
		product.setId_img(productOld.getId_img());
		product.setId_product(productOld.getId_product());
		int count1 = productService.EditProduct(product);
		int count2 = productService.EditImage(product);
		if (count1 > 0 && count2 > 0) {
			System.out.println("Sửa thành công");
		} else {
			System.out.println("Sửa không thành công");
		}
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = "/admin/them-san-pham", method = RequestMethod.GET)
	public ModelAndView ThemSanPham() {
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.addObject("product", new ProductsDto());
		_mvShare.setViewName("admin/products/add_product");
		return _mvShare;
	}

	@RequestMapping(value = "/admin/them-san-pham", method = RequestMethod.POST)
	public ModelAndView CreateProduct(@ModelAttribute("product") ProductsDto product) {
		int count1 = productService.AddProduct(product);
		int count2 = productService.AddImage(product);
		if (count1 > 0 && count2 > 0) {
			_mvShare.addObject("status", "Thêm thành công");
		} else {
			_mvShare.addObject("status", "Thêm không thành công");
		}
		_mvShare.setViewName("admin/products/add_product");
		return _mvShare;
	}
	
}
