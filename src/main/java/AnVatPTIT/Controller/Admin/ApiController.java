package AnVatPTIT.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("admin/api/")
public class ApiController {
	@GetMapping("LoadSanPham")
	@ResponseBody
	public String LoadSanPham(@RequestParam String loaisp) {
		
		return loaisp;
	}
}
