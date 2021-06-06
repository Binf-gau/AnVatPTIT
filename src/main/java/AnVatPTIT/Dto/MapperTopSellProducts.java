package AnVatPTIT.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperTopSellProducts implements RowMapper<TopSellProductsDto> {

	public TopSellProductsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		TopSellProductsDto topSellProducts = new TopSellProductsDto();
		topSellProducts.setName_product(rs.getString("name_product"));
		topSellProducts.setId_product(rs.getLong("id_product"));
		topSellProducts.setSo_luong(rs.getInt("so_luong"));
		topSellProducts.setTong_tien(rs.getDouble("tong_tien"));
		return topSellProducts;
	}

}
