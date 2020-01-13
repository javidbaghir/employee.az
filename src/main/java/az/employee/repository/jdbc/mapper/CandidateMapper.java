package az.employee.repository.jdbc.mapper;

import az.employee.domain.Candidate;
import az.employee.domain.EducationLevel;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class CandidateMapper implements RowMapper<Candidate> {

    @Override
    public Candidate mapRow(ResultSet rs, int rowNum) throws SQLException {
        Candidate candidate = new Candidate();

        /*
        * GET_CANDIDATE_LIST = "select c.id, c.user_id, u.name, u.surname,
        * u.email, u.mobile, u.phone,\n" +
            "\tc.profile_image, c.video_file, \n" +
            "    c.address_id, a.country_id, cr.name country_name,\n" +
            "    a.city_id, ct.name city_name, a.info,\n" +
            "    c.birth_date, \n" +
            "    c.degree_id, el.name education_level,\n" +
            "    c.idate, c.udate\n" +
            "from candidate c join user u on c.user_id = u.id and c.status = 1 and u.status = 1\n" +
            "\tjoin address a on c.address_id = a.id and a.status = 1\n" +
            "\tjoin country cr on a.country_id = cr.id and cr.status = 1\n" +
            "    join city ct on a.city_id = ct.id and ct.status = 1\n" +
            "    join education_level el on c.degree_id = el.id and el.status = 1" +
            "order by c.idate desc " +
            "limit %d, 12";
        * */

        candidate.setId(rs.getLong("id"));
        candidate.getUser().setId(rs.getLong("user_id"));
        candidate.getUser().setName(rs.getString("name"));
        candidate.getUser().setSurname(rs.getString("surname"));
        candidate.getUser().setEmail(rs.getString("email"));
        candidate.getUser().setMobile(rs.getString("mobile"));
        candidate.getUser().setPhone(rs.getString("phone"));
        candidate.setPosition(rs.getString("position"));
        candidate.setSalaryMin(rs.getBigDecimal("salary_min"));
        candidate.setSalaryMax(rs.getBigDecimal("salary_max"));

        candidate.setProfileImage(rs.getString("profile_image"));
        candidate.setVideoFile(rs.getString("video_file"));

        candidate.getAddress().setId(rs.getLong("address_id"));
        candidate.getAddress().getCountry().setId(rs.getLong("country_id"));
        candidate.getAddress().getCountry().setName(rs.getString("country_name"));
        candidate.getAddress().getCity().setId(rs.getLong("city_id"));
        candidate.getAddress().getCity().setName(rs.getString("city_name"));
        candidate.getAddress().setInfo(rs.getString("info"));

        candidate.setBirthDate(rs.getDate("birth_date").toLocalDate());

        if(rs.getLong("degree_id") > 0) {
            candidate.setDegree(new EducationLevel( rs.getLong("degree_id"), rs.getString("education_level")));
        }

        candidate.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());
        if(rs.getTimestamp("udate") != null) {
            rs.getTimestamp("udate").toLocalDateTime();
        }

        return candidate;
    }
}
