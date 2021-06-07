package AnVatPTIT.Controller.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import AnVatPTIT.Entity.Admins;
import AnVatPTIT.Service.Admin.AccountServiceImpl_Admin;

@Controller
public class LoginController_Admin extends BaseController_Admin {

	@Autowired
	AccountServiceImpl_Admin accountService = new AccountServiceImpl_Admin();

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView DangNhap() {
		//_mvShare.addObject("statusLogin", null);
		_mvShare.addObject("admin", new Admins());
		_mvShare.setViewName("layouts/login");
		return _mvShare;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String Login(HttpServletRequest request, HttpSession session, @ModelAttribute("admin") Admins admin) {
		admin = accountService.CheckAccount(admin);
		if (admin != null) {
			session.setAttribute("AdminInfo", admin);
			return "redirect:admin";
		}
		else {
			_mvShare.addObject("statusLogin", "Đăng nhập không thành công!");
		}
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String Logout(HttpSession session) {
		session.removeAttribute("AdminInfo");
		_mvShare.addObject("statusLogin", null);
		return 	"redirect:login";
	}
}
