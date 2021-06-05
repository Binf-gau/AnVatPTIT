package AnVatPTIT.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import AnVatPTIT.Entity.Bills;
import AnVatPTIT.Entity.Status;

@Service
public interface IBillsService_Admin {
	public List<Bills> GetAllBills();
	public List<Status> GetDataStaus();
	public int UpdateStatus(long id_bills, Status status);
}
