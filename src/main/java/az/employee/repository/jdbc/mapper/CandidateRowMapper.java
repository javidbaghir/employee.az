package az.employee.repository.jdbc.mapper;

import az.employee.domain.Candidate;
import az.employee.domain.EducationLevel;
import az.employee.domain.UserStatus;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class CandidateRowMapper implements RowMapper<Candidate> {

    @Override
    public Candidate mapRow(ResultSet rs, int i) throws SQLException {
        Candidate candidate = new Candidate();

        candidate.setId(rs.getLong("candidate_id"));
        candidate.getUser().setId(rs.getLong("user_id"));
        candidate.getUser().setName(rs.getString("name"));
        candidate.getUser().setSurname(rs.getString("surname"));

        candidate.getUser().setStatus(UserStatus.fromStatus(rs.getInt("user_status_id")));
        candidate.getUser().setEmail(rs.getString("email"));
        candidate.getUser().setPassword(rs.getString("password"));
        if (rs.getString("phone") != null) {
            candidate.getUser().setPhone(rs.getString("phone"));
        }

        if (rs.getString("mobile") != null) {
            candidate.getUser().setMobile(rs.getString("mobile"));
        }

        if (rs.getDate("birth_date").toLocalDate() != null) {
            candidate.setBirthDate(rs.getDate("birth_date").toLocalDate());
        }
        if (rs.getString("profile_image") != null) {
            candidate.setProfileImage(rs.getString("profile_image"));
        }

        if (rs.getString("video_file") != null) {
            candidate.setVideoFile(rs.getString("video_file"));
        }

        candidate.getAddress().setId(rs.getLong("address_id"));
        candidate.getAddress().setInfo(rs.getString("info"));
        candidate.getAddress().getCountry().setId(rs.getLong("country_id"));
        candidate.getAddress().getCountry().setName(rs.getString("country_name"));
        candidate.getAddress().getCity().setId(rs.getLong("city_id"));
        candidate.getAddress().getCity().setName(rs.getString("city_name"));
        candidate.getAddress().getCity().setCountryId(rs.getLong("country_id"));


        if(rs.getLong("degree_id") > 0) {
            candidate.setDegree(new EducationLevel());
            candidate.getDegree().setId(rs.getLong("degree_id"));
            candidate.getDegree().setEducationLevelName(rs.getString("education_level"));
        }

        if (rs.getString("position") != null) {
            candidate.setPosition(rs.getString("position"));
        }
        if (rs.getBigDecimal("salary_min") != null) {
            candidate.setSalaryMin(rs.getBigDecimal("salary_min"));
        }
        if (rs.getBigDecimal("salary_max") != null) {
            candidate.setSalaryMax(rs.getBigDecimal("salary_max"));
        }

//
//        if (rs.getTimestamp("c.udate") != null) {
//            candidate.setLastUpdate(rs.getTimestamp("c.udate").toLocalDateTime());
//        }
//
//        candidate.setInsertDate(rs.getTimestamp("c.idate").toLocalDateTime());


        return candidate;
    }

    /*
   "select name,surname,user_status_id,email,phone,mobile, " +
        "id candidate_id,user_id,birth_date,profile_image,video_file,position,salary_min,salary_max, " +
        "address_id,info " +
        "city_id,ct.name city_name, " +
        "country_id,cr.name country_name, " +
        "degree_id,el.name education_level, " +
        "idate candidate_idate,udate candidate_udate " +
     */
}
