package AnVatPTIT.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import AnVatPTIT.Dto.CartDto;
import AnVatPTIT.Entity.Bills;

@Service
public interface IBillsService {
	public int AddBills(Bills bill);
	public void AddBillDetail(HashMap<Long, CartDto> carts);
}
