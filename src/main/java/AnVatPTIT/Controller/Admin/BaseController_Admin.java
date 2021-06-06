package AnVatPTIT.Controller.Admin;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import AnVatPTIT.Service.Admin.HomeServiceImpl_Admin;

@Controller
public class BaseController_Admin {
	@Autowired
	HomeServiceImpl_Admin _homeService;
	public ModelAndView _mvShare = new ModelAndView();

	@PostConstruct
	public ModelAndView Init() {
		return _mvShare;
	}
}
