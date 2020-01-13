package az.employee.repository.jdbc.mapper;

import az.employee.domain.Interview;
import az.employee.domain.JobType;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class InterviewRowMapper implements RowMapper<Interview> {
    @Override
    public Interview mapRow(ResultSet rs, int i) throws SQLException {


        /*select i.id, i.job_id, o.name comp_name, j.position, i.info, j.salary_min, j.salary_max, ct.name country_name, cy.name city_name, a.info add_info, i.date, jt.id*/
        Interview interview = new Interview();

        interview.setId(rs.getLong("id"));
        interview.getJob().setId(rs.getLong("job_id"));
        interview.getJob().getOrganization().setName(rs.getString("comp_name"));
        interview.getJob().setPosition(rs.getString("position"));
        interview.setInfo(rs.getString("info"));
        interview.getJob().setMinSalary(rs.getBigDecimal("salary_min"));
        interview.getJob().setMaxSalary(rs.getBigDecimal("salary_max"));
        interview.getJob().getAddress().getCountry().setName(rs.getString("country_name"));
        interview.getJob().getAddress().getCity().setName(rs.getString("city_name"));
        interview.getJob().getAddress().setInfo(rs.getString("add_info"));
        interview.setInterviewDate(rs.getTimestamp("date").toLocalDateTime());
        interview.getJob().setType(JobType.fromValue(rs.getInt("job_type_id")));

        return interview;
    }
}
