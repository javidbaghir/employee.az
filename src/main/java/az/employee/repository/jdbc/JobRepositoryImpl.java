package az.employee.repository.jdbc;

import az.employee.domain.Job;
import az.employee.domain.JobCategoryCount;
import az.employee.repository.JobRepository;
import az.employee.repository.jdbc.mapper.JobCategoryRowMapper;
import az.employee.repository.jdbc.mapper.JobDetailsRowMapper;
import az.employee.repository.jdbc.mapper.JobRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class JobRepositoryImpl implements JobRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Autowired
    private JobCategoryRowMapper jobCategoryRowMapper;

    @Autowired
    private JobDetailsRowMapper jobDetailsRowMapper;

    @Autowired
    private JobRowMapper jobRowMapper;

    @Override
    public long getAllJobCount() {
        return jdbcTemplate.queryForObject(SqlQuery.GET_ALL_JOB_COUNT,new MapSqlParameterSource(),Long.class);
    }

    @Override
    public List<JobCategoryCount> getJobCategoryCount() {
        return jdbcTemplate.query(SqlQuery.GET_JOB_CATEGORY_COUNT,new MapSqlParameterSource(), jobCategoryRowMapper);
    }

    @Override
    public List<Job> getRecentJob() {
        return jdbcTemplate.query(SqlQuery.GET_RECENT_JOB_LIST,new MapSqlParameterSource(),jobRowMapper);
    }

    @Override
    public Job getJobDetails(long id) {

        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("id", id);

        return jdbcTemplate.query(SqlQuery.GET_JOB_DETAILS, params, jobDetailsRowMapper).get(0);
    }


}
