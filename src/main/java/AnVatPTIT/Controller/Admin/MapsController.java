package AnVatPTIT.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MapsController extends BaseController_Admin{
	
	@RequestMapping("/admin/maps")
	public ModelAndView Maps() {
		_mvShare.setViewName("admin/maps/maps");
		return _mvShare;
	}
}
