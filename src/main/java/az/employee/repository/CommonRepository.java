package az.employee.repository;


import az.employee.domain.City;
import az.employee.domain.Country;

import java.util.List;

public interface CommonRepository {

    List<Country> getCountryList();
    List<City> getCityList(long countryId);
}
