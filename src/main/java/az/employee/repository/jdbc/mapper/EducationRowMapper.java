package az.employee.repository.jdbc.mapper;

import az.employee.domain.Candidate;
import az.employee.domain.EducationLevel;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class EducationRowMapper implements RowMapper<EducationLevel> {
    @Override
    public EducationLevel mapRow(ResultSet rs, int i) throws SQLException {
        System.out.println("Ruslannnnnnnnnnnnn ");

        EducationLevel educationLevel = new EducationLevel();
        // Candidate candidate = new Candidate();

        educationLevel.setCandidateId(rs.getLong("candidate_id"));
        educationLevel.setOrganizationName(rs.getString("org_name"));
        educationLevel.setEducationLevelName(rs.getString("edu_level_name"));
        educationLevel.setStartDate(rs.getDate("start_date").toLocalDate());
        educationLevel.setEndDate(rs.getDate("end_date").toLocalDate());

         //   candidate.getEducationLevels().setCandidateId(rs.getLong("e.candidate_id"));

       // System.out.println("elevel - "+ educationLevel);
        return educationLevel;
    }
}
