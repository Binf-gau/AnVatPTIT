package AnVatPTIT.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import AnVatPTIT.Entity.Categorys;
import AnVatPTIT.Entity.MapperCategorys;

@Repository
public class CategorysDao extends BaseDao {
	
	public List<Categorys> GetDataCategorys() {
		List<Categorys> list = new ArrayList<Categorys>();
		String sql = "SELECT * FROM categorys";
		list = _jdbcTemplate.query(sql, new MapperCategorys());
		return list;
	}
	
	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM categorys ");
		return sql;
	}
	
	private String SqlGetCategoryByID(int id) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND id = " + id + " ");
		sql.append("LIMIT 1 ");
		return sql.toString();
	}
	
	public Categorys GetCategoryByID(int id) {
		Categorys categorys = new Categorys();
		String sql = SqlGetCategoryByID(id);
		categorys = _jdbcTemplate.queryForObject(sql, new MapperCategorys());
		return categorys;
	}
	
	public int DeleteCategory(int id) {
		StringBuffer sql = new StringBuffer();
		sql.append("DELETE ");
		sql.append("FROM `categorys` ");
		sql.append("WHERE id = " + id);
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public int EditCategory(Categorys category) {
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE `categorys` ");
		sql.append("SET ");
		sql.append("`name`='"+category.getName()+"', ");
		sql.append("`description`= '"+category.getDescription()+"' ");
		sql.append("WHERE id = " + category.getId());
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public int AddCategory(Categorys category) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO categorys ");
		sql.append("( ");
		sql.append("	name, ");
		sql.append("    description ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '" + category.getName() + "', ");
		sql.append("    '" + category.getDescription() + "' ");
		sql.append(")");

		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public int TotalCategorys() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT COUNT(*) FROM categorys");
		int insert = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return insert;
	}
}