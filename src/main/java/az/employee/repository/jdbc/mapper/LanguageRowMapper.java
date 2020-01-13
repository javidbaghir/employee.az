package az.employee.repository.jdbc.mapper;

import az.employee.domain.Language;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;


@Component
public class LanguageRowMapper implements RowMapper<Language> {
    @Override
    public Language mapRow(ResultSet rs, int i) throws SQLException {

        Language language = new Language();

        language.setCandidateId(rs.getLong("ls.candidate_id"));
        language.setName(rs.getString("l.name"));
        language.setReading(rs.getInt("ls.reading"));
        language.setSpeaking(rs.getInt("ls.speaking"));
        language.setWriting(rs.getInt("ls.writing"));
        language.setListening(rs.getInt("ls.listening"));

        return language;
    }
}
