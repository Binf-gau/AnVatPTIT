package AnVatPTIT.Service.User;

import org.springframework.stereotype.Service;

import AnVatPTIT.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage);
}