package AnVatPTIT.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController_Admin extends BaseController_Admin {
	
	@RequestMapping(value = { "/admin", "/admin/dashboard" })
	public ModelAndView Index() {
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.addObject("totalProducts", _homeService.TotalProducts());
		_mvShare.addObject("totalBills", _homeService.TotalBills());
		_mvShare.addObject("totalUsers", _homeService.TotalUsers());
		_mvShare.addObject("totalCategorys", _homeService.TotalCategorys());
		_mvShare.addObject("listBillsOfMonth", _homeService.GetAllBillsOfMonth());
		_mvShare.addObject("topSellProducts", _homeService.GetTopSellProducts());
		_mvShare.addObject("totalRevenueOfMonth", _homeService.TotalRevenueOfMonth());
		_mvShare.setViewName("admin/dashboard");
		return _mvShare;
	}
}
