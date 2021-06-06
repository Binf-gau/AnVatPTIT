package AnVatPTIT.Dao;

import org.springframework.stereotype.Repository;

import AnVatPTIT.Entity.MapperUsers;
import AnVatPTIT.Entity.Users;

@Repository
public class UsersDao extends BaseDao {
	public int AddAccount(Users user) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO users ");
		sql.append("( ");
		sql.append("	user, ");
		sql.append("    password, ");
		sql.append("    display_name, ");
		sql.append("    address ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '" + user.getUser() + "', ");
		sql.append("    '" + user.getPassword() + "', ");
		sql.append("    '" + user.getDisplay_name() + "', ");
		sql.append("    '" + user.getAddress() + "' ");
		sql.append(")");
		try {
			int insert = _jdbcTemplate.update(sql.toString());
			return insert;
		}
		catch (Exception e) {
			return 0;
		}
	}

	public Users GetUserByAccount(Users user) {
		String sql = "SELECT * FROM users WHERE user = '"+user.getUser()+"'";
		try {
			Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());
			return result;
		}
		catch(Exception e) {
			return null;
		}
	}

	public int TotalUsers() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT COUNT(*) FROM users");
		int insert = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return insert;
	}
}
