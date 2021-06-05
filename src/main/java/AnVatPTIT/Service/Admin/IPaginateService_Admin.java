package AnVatPTIT.Service.Admin;

import org.springframework.stereotype.Service;

import AnVatPTIT.Dto.PaginatesDto;
@Service
public interface IPaginateService_Admin {
	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage);
}
