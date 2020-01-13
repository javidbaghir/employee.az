package az.employee.repository.jdbc;

import az.employee.config.EmployeeazConfiguration;
import az.employee.domain.*;
import az.employee.repository.CandidateRepository;
import az.employee.repository.jdbc.mapper.*;
import az.employee.util.ColumnType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;


import java.util.List;
import java.util.Optional;

@Repository
public class CandidateRepositoryJdbcImpl implements CandidateRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Autowired
    private CandidateMapper candidateMapper;

    @Autowired
    private CandidateRowMapper candidateRowMapper;

    @Autowired
    private WorkExperienceRowMapper workExperienceRowMapper;

    @Autowired
    private EducationRowMapper educationRowMapper;

    @Autowired
    private CertificateRowMapper certificateRowMapper;

    @Autowired
    private LanguageRowMapper languageRowMapper;

    @Autowired
    private TagRowMapper tagRowMapper;

    @Autowired
    private CountryRowMapper countryRowMapper;

    @Autowired
    private JobAppliedRowMapper jobRowMapper;

    @Autowired
    private InterviewRowMapper interviewRowMapper;

    @Autowired
    private EmployeeazConfiguration configuration;


    @Override
    public List<Candidate> getCandidateList(int page) {
        String sql = String.format(SqlQuery.GET_CANDIDATE_LIST, (page - 1) * 12);
        return jdbcTemplate.query(sql, candidateMapper);
    }


    @Override
    public List<Candidate> getCandidateListAdmin(String search, int column, String columnDir, int start, int length) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("searchWord", "%" + search + "%");
        String sql = String.format(SqlQuery.GET_CANDIDATE_LIST_ADMIN, ColumnType.fromColumn(column), columnDir, start, length);
        return jdbcTemplate.query(sql, params, candidateRowMapper);
    }

    @Override
    public long getCandidateCount() {
        return jdbcTemplate.queryForObject(
                SqlQuery.GET_CANDIDATE_COUNT,
                new MapSqlParameterSource(),
                Long.class);
    }

    @Override
    public Optional<Candidate> getCandidateById(long id) {
        System.out.println("repositoryda ki ID " + id);
        Optional<Candidate> optionalCandidate = Optional.empty();

        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("candidate_id", id);
        List<Candidate> list = jdbcTemplate.query(SqlQuery.GET_CANDIDATE_BY_ID, params, candidateRowMapper);

        if (!list.isEmpty()) {
            optionalCandidate = Optional.of(list.get(0));
        }
        return optionalCandidate;
    }


    @Override
    public Optional<Candidate> getCandidateByUserId(long userId) {
        Optional<Candidate> optionalCandidate = Optional.empty();

        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("user_id", userId);
        System.out.println("rrr r "+userId);
        List<Candidate> list = jdbcTemplate.query(SqlQuery.GET_CANDIDATE_BY_USER_ID, params, candidateRowMapper);

        if (!list.isEmpty()) {
            optionalCandidate = Optional.of(list.get(0));
            System.out.println("optionalcccc  "+optionalCandidate.get().getId());
        }
        return optionalCandidate;
    }


    @Override
    public List<JobHistory> getWorkExperience(long id) {

        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("candidate_id", id);
        return jdbcTemplate.query(SqlQuery.GET_CANDIDATE_JOB_HISTORY, params, workExperienceRowMapper);
    }

    @Override
    public List<EducationLevel> getEducationList(long id) {


        //EducationLevel educationLevel = null ;

        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("candidate_id", id);

        List<EducationLevel> list = jdbcTemplate.query(SqlQuery.GET_EDUCATION_LIST, params, educationRowMapper);

//        if(!list.isEmpty()){
//             educationLevel =  list.get(0);
//        }
//        System.out.println("education = "+ educationLevel.getEducationLevelName());

        return list;
    }

    @Override
    public List<Certificate> getCertificateList(long id) {

        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("candidate_id", id);
        return jdbcTemplate.query(SqlQuery.GET_CERTIFICATE_LIST, params, certificateRowMapper);
    }

    @Override
    public List<Language> getLanguageList(long id) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("candidate_id", id);
        return jdbcTemplate.query(SqlQuery.GET_LANGUAGE_LIST, params, languageRowMapper);
    }

    @Override
    public List<Tag> getTagList(long id) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("candidate_id", id);
        return jdbcTemplate.query(SqlQuery.GET_TAG_LIST, params, tagRowMapper);
    }

    @Override
    public long updateUser(User user) {
        MapSqlParameterSource params = new MapSqlParameterSource();

            params.addValue("id", user.getId());
            params.addValue("name", user.getName());
            params.addValue("surname", user.getSurname());
            params.addValue("email", user.getEmail());



           long count = jdbcTemplate.update(SqlQuery.UPDATE_USER, params);

        return count;
    }

    @Override
    public Optional<Address> getAddress(long id) {
        return Optional.empty();
    }

    @Override
    public List<Application> getLastAppliedList(long id) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("candidate_id", id);
                List<Application> list= jdbcTemplate.query(SqlQuery.GET_CANDIDATE_LAST_APPLIED_JOB, params, jobRowMapper);
        return list;
    }

    @Override
    public List<Application> getAppliedList(long id, int page) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("candidate_id", id);
        String sql = String.format(SqlQuery.GET_CANDIDATE_APPLIED_JOB, (page - 1) * 5);
        List<Application> list = jdbcTemplate.query(sql, params, jobRowMapper);
        return list;
    }

    @Override
    public long getApplicationCount() {
        return jdbcTemplate.getJdbcTemplate().queryForObject(SqlQuery.GET_APPLICATION_COUNT,long.class);

    }

    @Override
    public boolean cancelApplication(long id) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("id", id);

        int count = jdbcTemplate.update(SqlQuery.CANCEL_JOB, params);

        if (count > 0){
            return true;
        }
        return false;
    }

    @Override
    public List<Interview> getInterviewJobs(long id) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("candidate_id", id);
        return jdbcTemplate.query(SqlQuery.GET_INTERVIEW_JOBS, params, interviewRowMapper);

    }

    @Override
    public boolean rejectInterview(long id) {

        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("id", id);

        int count = jdbcTemplate.update(SqlQuery.REJECT_INTERVIEW, params);

        if (count > 0) {
            return true;
        }
        return false;
    }

    @Override
    public void saveProfileImage(long candidateId, String image) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("image", image);
        params.addValue("user_id", candidateId);

        int count = jdbcTemplate.update(SqlQuery.SAVE_CANDIDATE_PROFILE_IMAGE, params);

        if (count == 0){
            throw new RuntimeException("Error updating candidate profile image id = " + candidateId);
        }
    }
}
