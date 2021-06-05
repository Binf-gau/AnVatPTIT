package AnVatPTIT.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController_Admin extends BaseController_Admin {
	@RequestMapping(value = { "/admin", "/admin/dashboard" })
	public ModelAndView Index() {
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("admin/dashboard");
		return _mvShare;
	}
}
