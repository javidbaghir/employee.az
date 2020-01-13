package az.employee.repository.jdbc.mapper;

import az.employee.domain.Job;
import az.employee.domain.JobType;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class JobDetailsRowMapper implements RowMapper<Job> {
    @Override
    public Job mapRow(ResultSet rs, int i) throws SQLException {

        Job job = new Job();

        job.setId(rs.getLong("id"));
        job.setPosition(rs.getString("position"));
        job.setAbout(rs.getString("about"));
        job.setRequirement(rs.getString("requirement"));
        job.setMinSalary(rs.getBigDecimal("salary_min"));
        job.setMaxSalary(rs.getBigDecimal("salary_max"));
        job.setType(JobType.fromValue(rs.getInt("job_type_id")));
        job.setMinExperience(rs.getInt("experience_min"));
        job.setMaxExperience(rs.getInt("experience_max"));
        job.getAddress().getCity().setName(rs.getString("name"));
        job.getOrganization().setFacebook(rs.getString("facebook"));
        job.getOrganization().setTwitter(rs.getString("twitter"));
        job.getOrganization().setLinkedin(rs.getString("linkedin"));


        return job;
    }
}
