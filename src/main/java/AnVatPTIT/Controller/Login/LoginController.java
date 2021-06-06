package AnVatPTIT.Controller.Login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@RequestMapping("/login")
	public ModelAndView Login() {
		ModelAndView mvShare = new ModelAndView();
		mvShare.setViewName("layouts/login");
		return mvShare;
	}
}
