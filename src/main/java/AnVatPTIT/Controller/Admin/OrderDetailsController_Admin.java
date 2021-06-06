package AnVatPTIT.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import AnVatPTIT.Entity.Status;
import AnVatPTIT.Service.Admin.IBillsService_Admin;

@Controller
public class OrderDetailsController_Admin extends BaseController_Admin {
	
	@Autowired
	private IBillsService_Admin billsService; 
	
	@RequestMapping("/admin/don-hang")
	public ModelAndView ChiTietHoaDon() {
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.addObject("bills", billsService.GetAllBills());
		_mvShare.addObject("liststatus", billsService.GetDataStaus());
		_mvShare.addObject("status", new Status(1));
		_mvShare.setViewName("admin/bills/order_details");
		return _mvShare;
	}
	
	@RequestMapping("/admin/confirm/{id_bills}")
	public String XacNhan(@PathVariable long id_bills, @ModelAttribute("status") Status status ) {
		int count = billsService.UpdateStatus(id_bills, status);
		if(count > 0) {
			System.out.println("Đã cập nhật");
		}
		return "redirect:/admin/don-hang";
	}
}
