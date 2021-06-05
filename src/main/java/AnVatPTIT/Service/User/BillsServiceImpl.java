package AnVatPTIT.Service.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import AnVatPTIT.Dao.BillsDao;
import AnVatPTIT.Dto.CartDto;
import AnVatPTIT.Entity.BillDetail;
import AnVatPTIT.Entity.Bills;

@Service
public class BillsServiceImpl implements IBillsService {
	
	@Autowired
	private BillsDao billsDao;

	public int AddBills(Bills bill) {
		return billsDao.AddBills(bill);
	}

	public void AddBillDetail(HashMap<Long, CartDto> carts) {
		long idBills = billsDao.GetIDLastBills();
		
		for(Map.Entry<Long, CartDto> itemCart : carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bills(idBills);
			billDetail.setId_product(itemCart.getValue().getProduct().getId_product());
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billsDao.AddBillDetail(billDetail);
		}
		
	}

}
