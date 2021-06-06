package AnVatPTIT.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import AnVatPTIT.Dto.TopSellProductsDto;
import AnVatPTIT.Entity.Admins;
import AnVatPTIT.Entity.Bills;
import AnVatPTIT.Entity.Categorys;

@Service
public interface IHomeService_Admin {
	public List<Categorys> GetDataCategorys();
	public int TotalUsers();
	public int TotalBills();
	public int TotalProducts();
	public int TotalCategorys();
	public double TotalRevenueOfMonth();
	public List<Bills> GetAllBillsOfMonth();
	public List<Admins> GetAllAdmins();
	public List<TopSellProductsDto> GetTopSellProducts();
}
