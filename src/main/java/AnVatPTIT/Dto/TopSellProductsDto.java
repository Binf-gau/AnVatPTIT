package AnVatPTIT.Dto;

public class TopSellProductsDto {
	
	private String name_product;
	private long id_product;
	private int so_luong;
	private double tong_tien;

	public TopSellProductsDto() {
	}

	public String getName_product() {
		return name_product;
	}

	public void setName_product(String name_product) {
		this.name_product = name_product;
	}

	public long getId_product() {
		return id_product;
	}

	public void setId_product(long id_product) {
		this.id_product = id_product;
	}

	public int getSo_luong() {
		return so_luong;
	}

	public void setSo_luong(int so_luong) {
		this.so_luong = so_luong;
	}

	public double getTong_tien() {
		return tong_tien;
	}

	public void setTong_tien(double tong_tien) {
		this.tong_tien = tong_tien;
	}

}
