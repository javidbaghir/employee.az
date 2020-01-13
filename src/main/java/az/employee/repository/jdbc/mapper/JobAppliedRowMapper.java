package az.employee.repository.jdbc.mapper;

import az.employee.domain.Application;
import az.employee.domain.Job;
import az.employee.domain.JobType;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class JobAppliedRowMapper implements RowMapper<Application> {
    @Override
    public Application mapRow(ResultSet rs, int i) throws SQLException {

//        Job job = new Job();
//
//        job.setId(rs.getLong("id"));
//        job.getApplication().setId(rs.getLong("ap_id"));
//        job.setCandidateId(rs.getLong("candidate_id"));
//        job.setPosition(rs.getString("position"));
//        job.setType(JobType.fromValue(rs.getInt("job_type_id")));
//        job.getAddress().getCity().setName(rs.getString("name"));

        Application application = new Application();

        application.setId(rs.getLong("ap_id"));
        application.getJob().setId(rs.getLong("job_id"));
        application.getCandidate().setId(rs.getLong("candidate_id"));
        application.getJob().setPosition(rs.getString("position"));
        application.getJob().setType(JobType.fromValue(rs.getInt("job_type_id")));
        application.getCandidate().getAddress().getCity().setName(rs.getString("name"));


        return application;
    }
}
