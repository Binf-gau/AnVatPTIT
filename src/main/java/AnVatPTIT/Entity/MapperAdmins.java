package AnVatPTIT.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperAdmins implements RowMapper<Admins> {

	public Admins mapRow(ResultSet rs, int rowNum) throws SQLException {
		Admins admin = new Admins();
		admin.setId(rs.getLong("id"));
		admin.setEmail(rs.getString("email"));
		admin.setPassword(rs.getString("password"));
		admin.setPhone_number(rs.getString("phone_number"));
		admin.setCmnd(rs.getString("cmnd"));
		admin.setBirthday(rs.getDate("birthday"));
		admin.setFirst_name(rs.getString("first_name"));
		admin.setLast_name(rs.getString("last_name"));
		admin.setAddress(rs.getString("address"));
		return admin;
	}
	

}
