package AnVatPTIT.Controller.Admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import AnVatPTIT.Entity.Categorys;
import AnVatPTIT.Service.Admin.CategoryServiceImpl_Admin;
import AnVatPTIT.Service.Admin.ICategoryService_Admin;

@Controller
public class CategoryController_Admin extends BaseController_Admin {
	
	@Autowired
	ICategoryService_Admin categoryService = new CategoryServiceImpl_Admin();
	
	@RequestMapping(value = "admin/loai-san-pham")
	public ModelAndView LoaiSanPham() {
		_mvShare.addObject("messageResponse", "");
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("admin/category/category");
		return _mvShare;
	}
	
	@RequestMapping(value = "admin/xoa-loai-san-pham/{id}")
	public String DeleteProduct(HttpServletRequest request, @PathVariable int id) {
		categoryService.DeleteCategory(id);
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = "admin/them-loai-san-pham", method = RequestMethod.GET)
	public ModelAndView ThemLoaiSanPham() {
		_mvShare.addObject("messageResponse", "");
		_mvShare.addObject("category", new Categorys());
		_mvShare.setViewName("admin/category/add_category");
		return _mvShare;
	}
	
	@RequestMapping(value = "/admin/them-loai-san-pham", method = RequestMethod.POST)
	public ModelAndView CreateCategorys(@ModelAttribute("category") Categorys category) {
		int count = categoryService.AddCategory(category);
		if (count > 0) {
			_mvShare.addObject("messageResponse", "Thêm loại sản phẩm thành công");
		} else {
			_mvShare.addObject("messageResponse", "Thêm loại sản phẩm không thành công");
		}
		_mvShare.setViewName("admin/category/add_category");
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		return _mvShare;
	}
	
	@RequestMapping(value = "/admin/sua-loai-san-pham/{id}", method = RequestMethod.GET)
	public ModelAndView SuaSanPham(@PathVariable int id) {
		Categorys category = new Categorys();
		category = categoryService.GetCategoryByID(id);
		_mvShare.addObject("category", category);
		_mvShare.setViewName("admin/category/edit_category");
		return _mvShare;
	}
	
	@RequestMapping(value = "/admin/sua-loai-san-pham/{id}", method = RequestMethod.POST)
	public String EditProduct(@ModelAttribute("category") Categorys category, HttpServletRequest request, @PathVariable int id) {
		Categorys categoryOld = new Categorys();
		categoryOld = categoryService.GetCategoryByID(id);
		category.setId(categoryOld.getId());
		int count = categoryService.EditCategory(category);
		if (count > 0) {
			_mvShare.addObject("messageResponse", "Sửa loại sản phẩm thành công");
		} else {
			_mvShare.addObject("messageResponse", "Sửa loại sản phẩm không thành công");
		}
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		return "redirect:"+request.getHeader("Referer");
	}
}
