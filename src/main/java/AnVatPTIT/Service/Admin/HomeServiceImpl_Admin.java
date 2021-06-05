package AnVatPTIT.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import AnVatPTIT.Dao.CategorysDao;
import AnVatPTIT.Entity.Categorys;

@Service
public class HomeServiceImpl_Admin implements IHomeService_Admin {
	@Autowired
	private CategorysDao categoryDao;

	public List<Categorys> GetDataCategorys() {
		return categoryDao.GetDataCategorys();
	}

}
