package AnVatPTIT.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import AnVatPTIT.Entity.BillDetail;
import AnVatPTIT.Entity.Bills;
import AnVatPTIT.Entity.MapperBills;

@Repository
public class BillsDao extends BaseDao {
	public int AddBills(Bills bill) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO `bills` ");
		sql.append("( ");
		sql.append(
				"    `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `created_at`, `note`, `id_user`, `id_status` ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '" + bill.getUser() + "', ");
		sql.append("    '" + bill.getPhone() + "', ");
		sql.append("    '" + bill.getDisplay_name() + "', ");
		sql.append("    '" + bill.getAddress() + "', ");
		sql.append("    " + bill.getTotal() + ", ");
		sql.append("    " + bill.getQuanty() + ", ");
		sql.append("     " + "NOW()" + ", ");
		sql.append("    '" + bill.getNote() + "', ");
		sql.append("    " + bill.getId_user() + ", ");
		sql.append("    " + bill.getId_status() + " ");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public long GetIDLastBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM bills;");
		long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Long.class);
		return id;
	}

	public int AddBillDetail(BillDetail billDetail) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO `billdetail` ");
		sql.append("( ");
		sql.append("    `id_product`, `id_bills`, `quanty`, `total` ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    " + billDetail.getId_product() + ", ");
		sql.append("    " + billDetail.getId_bills() + ", ");
		sql.append("    " + billDetail.getQuanty() + ", ");
		sql.append("    " + billDetail.getTotal() + " ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public List<Bills> GetAllBills() {
		List<Bills> list = new ArrayList<Bills>();
		String sql = "SELECT `id`, `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `created_at`, `note`, `id_user`, `id_status` FROM bills\r\n"
				+ "WHERE 1=1\r\n"
				+ "ORDER BY created_at ASC";
		list = _jdbcTemplate.query(sql, new MapperBills());
		return list;
	}

	public int TotalBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT COUNT(*) FROM bills");
		int insert = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return insert;
	}

	public List<Bills> GetAllBillsOfMonth() {
		List<Bills> list = new ArrayList<Bills>();
		String sql = "SELECT *\r\n"
				+ "FROM bills\r\n"
				+ "WHERE MONTH(created_at) = 6 AND YEAR(created_at) = 2021\r\n"
				+ "ORDER BY created_at ASC, total DESC";
		list = _jdbcTemplate.query(sql, new MapperBills());
		return list;
	}
	
	public double TotalRevenueOfMonth() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT SUM(total)\r\n"
				+ "FROM bills\r\n"
				+ "WHERE month(created_at) = 6 AND year(created_at) = 2021");
		double insert = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Double.class);
		return insert;
	}
}
