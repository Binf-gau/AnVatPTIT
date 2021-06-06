package AnVatPTIT.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import AnVatPTIT.Dao.BillsDao;
import AnVatPTIT.Dao.CategorysDao;
import AnVatPTIT.Dao.ProductsDao;
import AnVatPTIT.Dao.TopSellProductsDao;
import AnVatPTIT.Dao.UsersDao;
import AnVatPTIT.Dto.TopSellProductsDto;
import AnVatPTIT.Entity.Admins;
import AnVatPTIT.Entity.Bills;
import AnVatPTIT.Entity.Categorys;

@Service
public class HomeServiceImpl_Admin implements IHomeService_Admin {
	@Autowired
	private CategorysDao categoryDao;
	
	@Autowired
	private ProductsDao productsDao;
	
	@Autowired
	private BillsDao billsDao;
	
	@Autowired
	private UsersDao usersDao;
	
	@Autowired
	private TopSellProductsDao topSellProductsDao;

	public List<Categorys> GetDataCategorys() {
		return categoryDao.GetDataCategorys();
	}

	public int TotalUsers() {
		return usersDao.TotalUsers();
	}

	public int TotalBills() {
		return billsDao.TotalBills();
	}

	public int TotalProducts() {
		return productsDao.TotalProducts();
	}

	public int TotalCategorys() {
		return categoryDao.TotalCategorys();
	}

	public List<Bills> GetAllBillsOfMonth() {
		return billsDao.GetAllBillsOfMonth();
	}

	public List<Admins> GetAllAdmins() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<TopSellProductsDto> GetTopSellProducts() {
		return topSellProductsDao.GetTopSellProducts();
	}

	public double TotalRevenueOfMonth() {
		return billsDao.TotalRevenueOfMonth();
	}

}
