package AnVatPTIT.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CalendarController_Admin extends BaseController_Admin {
	@RequestMapping("/admin/lich")
	public ModelAndView Lich() {
		_mvShare.setViewName("admin/calendar/calendar");
		return _mvShare;
	}
}
