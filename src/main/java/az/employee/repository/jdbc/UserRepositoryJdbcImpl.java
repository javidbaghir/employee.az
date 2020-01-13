package az.employee.repository.jdbc;

import az.employee.domain.Role;
import az.employee.domain.User;
import az.employee.repository.UserRepository;
import az.employee.repository.jdbc.mapper.RoleRowMapper;
import az.employee.repository.jdbc.mapper.UserRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class UserRepositoryJdbcImpl implements UserRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Autowired
    private UserRowMapper userRowMapper;

    @Autowired
    private RoleRowMapper roleRowMapper;


    @Override
    public User addUser(User user) {
        KeyHolder keyHolder = new GeneratedKeyHolder();

        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("name", user.getName());
        params.addValue("surname", user.getSurname());
        params.addValue("user_status_id", user.getStatus().getValue());
        params.addValue("email", user.getEmail());
        params.addValue("password", user.getPassword());

        int count = jdbcTemplate.update(SqlQuery.ADD_USER, params, keyHolder);

        if (count > 0) {
            System.out.println("user added = " + user);
            user.setId(keyHolder.getKey().longValue());
        } else {
            System.out.println("user not added = " + user);
            throw new RuntimeException("user not added = " + user);
        }
        return user;
    }

    @Override
    public void addRole(User user, Role role) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("user_id", user.getId());
        params.addValue("role_id", role.getValue());

        int count = jdbcTemplate.update(SqlQuery.ADD_USER_ROLE, params);

        if (count > 0) {
            //todo add log
            System.out.println("Added role = " + role + " to user " + user.getEmail());
        } else {
            throw new RuntimeException("Error add role = " + role + " to user " + user.getEmail());
        }
    }

    @Override
    public Optional<User> getUserByEmail(String email) {
        Optional<User> optionalUser = Optional.empty();

        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("email", email);
        List<User> users = jdbcTemplate.query(SqlQuery.GET_USER_BY_EMAIL, params, userRowMapper);

        if (!users.isEmpty()) {
            optionalUser = Optional.of(users.get(0));
        }
        return optionalUser;
    }

    @Override
    public List<Role> getUserRoles(long userId) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("user_id", userId);

        List<Role> roles = jdbcTemplate.query(SqlQuery.GET_USER_ROLES, params, roleRowMapper);
        return roles;
    }

    @Override
    public Optional<User> getUserByToken(String token) {
        return Optional.empty();
    }

    @Override
    public long getTotalCount() {
        MapSqlParameterSource params = new MapSqlParameterSource();
        return jdbcTemplate.queryForObject(SqlQuery.GET_TOTAL_COUNT, params, Long.class);
    }

    @Override
    public long getFilterCount(String search) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("searchWord", "%" + search + "%");
        return jdbcTemplate.queryForObject(SqlQuery.GET_FILTER_COUNT, params, Long.class);
    }


}
