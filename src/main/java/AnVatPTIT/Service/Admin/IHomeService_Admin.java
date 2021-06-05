package AnVatPTIT.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import AnVatPTIT.Entity.Categorys;

@Service
public interface IHomeService_Admin {
	public List<Categorys> GetDataCategorys();
}
