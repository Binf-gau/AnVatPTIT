package AnVatPTIT.Service.Admin;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import AnVatPTIT.Dao.AdminsDao;
import AnVatPTIT.Entity.Admins;

@Service
public class AccountServiceImpl_Admin implements IAccountService_Admin {
	
	@Autowired
	AdminsDao adminsDao = new AdminsDao();

	public int AddAccount(Admins admin) {
		admin.setPassword(BCrypt.hashpw(admin.getPassword(), BCrypt.gensalt(12)));
		return adminsDao.AddAccount(admin);
	}

	public Admins CheckAccount(Admins admin) {
		String pass = admin.getPassword();
		admin = adminsDao.GetAdminByAccount(admin);
		if(admin != null) {
			if(BCrypt.checkpw(pass, admin.getPassword())) {
				return admin;
			} else {
				return null;
			}
		}
		return null;
	}
	
}
