package az.employee.repository.jdbc.mapper;

import az.employee.domain.JobHistory;
import io.micrometer.core.instrument.util.JsonUtils;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class WorkExperienceRowMapper implements RowMapper<JobHistory> {

    /*
    select we.candidate_id,we.position,we.start_date,we.end_date, " +
        "we.country_id,cr.name country_name, " +
        "we.city_id,ct.name city_name, " +
        "we.organization,o.name,o.head_office,o.create_date,o.num_of_employee,o.annual_revenue, " +
        "o.is_global,o.rating,o.about,o.mobile,o.website,o.email, " +
        "o.industry_id, " +
        "we.info " +
     */
    @Override
    public JobHistory mapRow(ResultSet rs, int i) throws SQLException {
        JobHistory jobHistory = new JobHistory();
        jobHistory.setCandidateId(rs.getLong("jh.candidate_id"));
        jobHistory.setPosition(rs.getString("jh.position"));
        System.out.println("JJJJJJJJJJJJJJJ" + jobHistory.getPosition());
        jobHistory.setStartDate(rs.getDate("jh.start_date").toLocalDate());
        if (rs.getDate("jh.end_date") != null) {
            jobHistory.setEndDate(rs.getDate("jh.end_date").toLocalDate());
        }
        jobHistory.getCountry().setId(rs.getLong("jh.country_id"));
        jobHistory.getCountry().setName(rs.getString("country_name"));
        jobHistory.getCity().setId(rs.getLong("jh.city_id"));
        jobHistory.getCity().setName(rs.getString("city_name"));

        if (rs.getString("jh.company") != null) {
            jobHistory.setOrganization(rs.getString("company"));
        }

        jobHistory.setInfo(rs.getString("jh.info"));

        return jobHistory;
    }

}

