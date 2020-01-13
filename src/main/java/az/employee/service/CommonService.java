package az.employee.service;

import az.employee.domain.City;
import az.employee.domain.Country;

import java.util.List;

public interface CommonService {

    List<Country> getCountryList();
    List<City> getCityList(long countryId);
}
