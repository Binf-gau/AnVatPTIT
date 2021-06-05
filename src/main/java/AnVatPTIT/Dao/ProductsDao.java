package AnVatPTIT.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import AnVatPTIT.Dto.ProductsDto;
import AnVatPTIT.Dto.ProductsDtoMapper;
import AnVatPTIT.Entity.Users;

@Repository
public class ProductsDao extends BaseDao {

	private final boolean YES = true;
	private final boolean NO = false;

	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("p.id as id_product ");
		sql.append(", p.id_category ");
		sql.append(", p.name ");
		sql.append(", p.price ");
		sql.append(", p.sale ");
		sql.append(", p.title ");
		sql.append(", p.highlight ");
		sql.append(", p.new_product ");
		sql.append(", p.details ");
		sql.append(", i.id as id_img ");
		sql.append(", i.img ");
		sql.append(", p.created_at ");
		sql.append("FROM ");
		sql.append("products AS p ");
		sql.append("INNER JOIN ");
		sql.append("images AS i ");
		sql.append("ON p.id = i.id_product ");
		return sql;
	}

	private String SqlProducts(boolean newProduct, boolean highLight) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		if (highLight) {
			sql.append("AND p.highlight = true ");
		}
		if (newProduct) {
			sql.append("AND p.new_product = true ");
		}
		sql.append("GROUP BY p.id, i.id_product ");
		sql.append("ORDER BY RAND() ");
		if (highLight) {
			sql.append("LIMIT 9 ");
		}
		if (newProduct) {
			sql.append("LIMIT 12 ");
		}
		return sql.toString();
	}

	private StringBuffer SqlProductsByID(int id) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND id_category = " + id + " ");
		return sql;
	} // được câu truy vấn lấy ra 1 bảng sản phẩm bằng id category

	private String SqlProductsPaginate(int id, int start, int totalPage) {
		StringBuffer sql = SqlProductsByID(id);
		sql.append("LIMIT " + start + ", " + totalPage);
		return sql.toString();
	} // được câu truy vấn lấy ra 1 trang sản phẩm(sản phẩm bắt đầu, sản phẩm kết
		// thúc) bằng id category

	public List<ProductsDto> GetDataProducts() {
		String sql = SqlProducts(YES, NO);
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts; // được câu truy vấn lấy ra 12 sản phẩm mới
	}

	public List<ProductsDto> GetAllProductsByID(int id) {
		String sql = SqlProductsByID(id).toString();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}

	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		StringBuffer sqlGetDataByID = SqlProductsByID(id);
		List<ProductsDto> listProductsByID = _jdbcTemplate.query(sqlGetDataByID.toString(), new ProductsDtoMapper());
		List<ProductsDto> listProducts = new ArrayList<ProductsDto>();
		if (listProductsByID.size() > 0) {
			String sql = SqlProductsPaginate(id, start, totalPage);
			listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		}
		return listProducts;
	}

	private String SqlProductByID(long id) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND p.id = " + id + " ");
		sql.append("LIMIT 1 ");
		return sql.toString();
	}

	public List<ProductsDto> GetProductByID(long id) {
		String sql = SqlProductByID(id);
		List<ProductsDto> listProduct = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProduct;
	}

	public ProductsDto FindProductByID(long id) {
		String sql = SqlProductByID(id);
		ProductsDto product = _jdbcTemplate.queryForObject(sql, new ProductsDtoMapper());
		return product;
	}

	public int AddProduct(ProductsDto product) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO products ");
		sql.append("( ");
		sql.append("	id_category, ");
		sql.append("	name, ");
		sql.append("    price, ");
		sql.append("    sale, ");
		sql.append("    title, ");
		sql.append("	highlight, ");
		sql.append("    new_product, ");
		sql.append("    details, ");
		sql.append("    created_at ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '" + product.getId_category() + "', ");
		sql.append("    N'" + product.getName() + "', ");
		sql.append("    " + product.getPrice() + ", ");
		sql.append("    " + product.getSale() + ", ");
		sql.append("    N'" + product.getTitle() + "', ");
		sql.append("    " + product.isHighlight() + ", ");
		sql.append("    " + product.isNew_product() + ", ");
		sql.append("    N'" + product.getDetails() + "', ");
		sql.append("    " + "NOW()" + " ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public long GetIDLastProducts() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM products;");
		long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Long.class);
		return id;
	}

	public int AddImage(ProductsDto product) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO images ");
		sql.append("( ");
		sql.append("	id_product, ");
		sql.append("    img ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    " + product.getId_product() + ", ");
		sql.append("    '" + product.getImg() + "' ");
		sql.append(")");

		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public int DeleteProduct(long id) {
		StringBuffer sql = new StringBuffer();
		sql.append("DELETE ");
		sql.append("FROM `products` ");
		sql.append("WHERE id = " + id);
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public int EditProduct(ProductsDto product) {
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE `products` ");
		sql.append("SET ");
		sql.append("`id_category`= "+product.getId_category()+", ");
		sql.append("`name`='"+product.getName()+"', ");
		sql.append("`price`= "+product.getPrice()+", ");
		sql.append("`sale`= "+product.getSale()+", ");
		sql.append("`title`='"+product.getTitle()+"', ");
		sql.append("`highlight`= "+product.isHighlight()+", ");
		sql.append("`new_product`= "+product.isNew_product()+", ");
		sql.append("`details`='"+product.getDetails()+"', ");
		sql.append("`created_at`= NOW() ");
		sql.append("WHERE id = " + product.getId_product());
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public int EditImage(ProductsDto product) {
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE `images` ");
		sql.append("SET ");
		sql.append("`img`='"+product.getImg()+"' ");
		sql.append("WHERE id_product = " + product.getId_product());
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	
}