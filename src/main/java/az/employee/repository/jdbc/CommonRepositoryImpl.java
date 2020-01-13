package az.employee.repository.jdbc;

import az.employee.domain.City;
import az.employee.domain.Country;
import az.employee.repository.CommonRepository;
import az.employee.repository.jdbc.mapper.CityRowMapper;
import az.employee.repository.jdbc.mapper.CountryRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CommonRepositoryImpl implements CommonRepository {

    @Autowired
    private CountryRowMapper countryRowMapper;

    @Autowired
    private CityRowMapper cityRowMapper;

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Override
    public List<Country> getCountryList(){
        List<Country> list = jdbcTemplate.query(SqlQuery.GET_COUNTRIES_LIST, countryRowMapper);
        return list;
    }


    @Override
    public List<City> getCityList(long countryId) {

        MapSqlParameterSource params = new MapSqlParameterSource("country_id", countryId);
        List<City> list = jdbcTemplate.query(SqlQuery.GET_CITY_LIST_BY_COUNTRY_ID, params, cityRowMapper);

        return list;
    }
}
