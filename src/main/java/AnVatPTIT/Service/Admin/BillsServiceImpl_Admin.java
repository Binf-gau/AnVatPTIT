package AnVatPTIT.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import AnVatPTIT.Dao.BillsDao;
import AnVatPTIT.Dao.StatusDao;
import AnVatPTIT.Entity.Bills;
import AnVatPTIT.Entity.Status;
@Service
public class BillsServiceImpl_Admin implements IBillsService_Admin {

	@Autowired
	private BillsDao billsDao;
	
	@Autowired
	private StatusDao statusDao;
	
	
	public List<Bills> GetAllBills() {
		return billsDao.GetAllBills();
	}
	
	public List<Status> GetDataStaus() {
		return statusDao.GetDataStatus();
	}

	public int UpdateStatus(long id_bills, Status status) {
		return statusDao.UpdateStatus(id_bills, status);
	}

}
