package AnVatPTIT.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import AnVatPTIT.Dto.MapperTopSellProducts;
import AnVatPTIT.Dto.TopSellProductsDto;

@Repository
public class TopSellProductsDao extends BaseDao {
	
	public List<TopSellProductsDto> GetTopSellProducts() {
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT p.name AS name_product, bd.id_product AS id_product , SUM(quanty) AS so_luong, SUM(total) AS tong_tien\r\n"
				+ "  FROM ( billdetail AS bd INNER JOIN products AS p ON bd.id_product = p.id)\r\n"
				+ "  GROUP BY id_product\r\n"
				+ "  ORDER BY so_luong DESC\r\n"
				+ "  LIMIT 10 ");
		List<TopSellProductsDto> listTopSellProducts = _jdbcTemplate.query(sql.toString(), new MapperTopSellProducts());
		return listTopSellProducts;
	}
}
