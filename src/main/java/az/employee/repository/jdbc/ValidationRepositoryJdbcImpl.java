package az.employee.repository.jdbc;

import az.employee.repository.ValidationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSourceExtensionsKt;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;



@Repository
public class ValidationRepositoryJdbcImpl implements ValidationRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Override
    public boolean isDuplicate(String email) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("email",email);
        Integer count = jdbcTemplate.queryForObject(SqlQuery.CHECK_EMAIL,params,Integer.class);
        return count > 0;
    }
}
