package AnVatPTIT.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import AnVatPTIT.Entity.Admins;
import AnVatPTIT.Service.Admin.AccountServiceImpl_Admin;
import AnVatPTIT.Service.Admin.IAccountService_Admin;

@Controller
public class AdminController extends BaseController_Admin {
	
	@Autowired
	IAccountService_Admin accountService = new AccountServiceImpl_Admin();
	
	@RequestMapping(value = { "/admin/them-quan-ly" }, method = RequestMethod.GET)
	public ModelAndView Register() {
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.addObject("messageResponse", "");
		_mvShare.setViewName("admin/account/register");
		_mvShare.addObject("admin", new Admins());
		return _mvShare;
	}
	
	@RequestMapping(value = { "/admin/them-quan-ly" }, method = RequestMethod.POST)
	public ModelAndView CreateAccount(@ModelAttribute("admin") Admins admin) {
		int count = accountService.AddAccount(admin);
		if (count > 0) {
			_mvShare.addObject("messageResponse", "Thêm quản lý thành công");
		} else {
			_mvShare.addObject("messageResponse", "Thêm quản lý không thành công");
		}
		_mvShare.setViewName("admin/account/register");
		return _mvShare;
	}
}
