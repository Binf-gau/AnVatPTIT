package AnVatPTIT.Dao;

import org.springframework.stereotype.Repository;

import AnVatPTIT.Entity.Admins;
import AnVatPTIT.Entity.MapperAdmins;

@Repository
public class AdminsDao extends BaseDao {

	public int AddAccount(Admins admin) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO `admin` ");
		sql.append("( ");
		sql.append("    `email`, ");
		sql.append("    `password`, ");
		sql.append("    `phone_number`, ");
		sql.append("    `cmnd`, ");
		sql.append("    `birthday`, ");
		sql.append("    `first_name`, ");
		sql.append("    `last_name`, ");
		sql.append("    `address` ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '"+admin.getEmail()+"', ");
		sql.append("    '"+admin.getPassword()+"', ");
		sql.append("    '"+admin.getPhone_number()+"', ");
		sql.append("    '"+admin.getCmnd()+"', ");
		sql.append("    '"+admin.getBirthday()+"', ");
		sql.append("    '"+admin.getFirst_name()+"', ");
		sql.append("    '"+admin.getLast_name()+"', ");
		sql.append("    '"+admin.getAddress()+"' ");
		sql.append(")");
		try {
			int insert = _jdbcTemplate.update(sql.toString());
			return insert;
		}
		catch (Exception e) {
			return 0;
		}
	}

	public Admins GetAdminByAccount(Admins admin) {
		String sql = "SELECT * FROM admins WHERE email = '" + admin.getEmail() + "'";
		Admins result = _jdbcTemplate.queryForObject(sql, new MapperAdmins());
		return result;
	}
}
