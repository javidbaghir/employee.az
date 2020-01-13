package az.employee.service.impl;

import az.employee.domain.City;
import az.employee.domain.Country;
import az.employee.repository.CommonRepository;
import az.employee.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommonServiceeImpl implements CommonService {

    @Autowired
    private CommonRepository commonRepository;

    @Override
    public List<Country> getCountryList() {
        return commonRepository.getCountryList();
    }

    @Override
    public List<City> getCityList(long countryId) {
        return commonRepository.getCityList(countryId);
    }
}
