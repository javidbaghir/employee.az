package az.employee.repository.jdbc.mapper;

import az.employee.domain.City;
import az.employee.domain.Country;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class CityRowMapper implements RowMapper<City> {

    @Override
    public City mapRow(ResultSet resultSet, int i) throws SQLException {
        City city = new City();
        city.setId(resultSet.getLong("id"));
        city.setName(resultSet.getString("name"));
        city.setCountryId(resultSet.getLong("country_id"));
        return city;
    }
}
