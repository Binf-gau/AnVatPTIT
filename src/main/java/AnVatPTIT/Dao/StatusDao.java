package AnVatPTIT.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import AnVatPTIT.Entity.MapperStatus;
import AnVatPTIT.Entity.Status;

@Repository
public class StatusDao extends BaseDao {
	public List<Status> GetDataStatus(){
		List<Status> list = new ArrayList<Status>();
		String sql = "SELECT * FROM status";
		list = _jdbcTemplate.query(sql, new MapperStatus());
		return list;
	}
	
	public int UpdateStatus(long id_bills, Status status) {
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE `bills` SET id_status = ");
		sql.append("    "+status.getId()+" ");
		sql.append("WHERE id = ");
		sql.append("    "+id_bills+" ");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
}
