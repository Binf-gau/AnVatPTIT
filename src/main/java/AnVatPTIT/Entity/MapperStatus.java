package AnVatPTIT.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperStatus implements RowMapper<Status> {

	public Status mapRow(ResultSet rs, int rowNum) throws SQLException {
		Status status = new Status();
		status.setId(rs.getInt("id"));
		status.setName(rs.getString("name"));
		return status;
	}

}
