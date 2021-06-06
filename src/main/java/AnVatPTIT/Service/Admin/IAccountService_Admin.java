package AnVatPTIT.Service.Admin;

import org.springframework.stereotype.Service;

import AnVatPTIT.Entity.Admins;

@Service
public interface IAccountService_Admin {
	public int AddAccount(Admins admin);
	public Admins CheckAccount(Admins admin);
}
