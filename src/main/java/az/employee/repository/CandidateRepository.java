package az.employee.repository;

import az.employee.domain.*;

import java.util.List;
import java.util.Optional;

public interface CandidateRepository {
    List<Candidate> getCandidateListAdmin(String search, int column, String columnDir, int start, int length);

    List<Candidate> getCandidateList(int page);

    long getCandidateCount();

    Optional<Candidate> getCandidateByUserId(long userId);
    Optional<Candidate> getCandidateById(long id);
    List<JobHistory> getWorkExperience(long id);
    List<EducationLevel> getEducationList(long id);
    List<Certificate> getCertificateList(long id);
    List<Language> getLanguageList(long id);
    List<Tag> getTagList(long id);
    long updateUser(User user);
    Optional<Address> getAddress(long id);

    List<Application> getLastAppliedList(long id);
    List<Application> getAppliedList(long id, int page);
    long getApplicationCount();


   boolean cancelApplication(long id);
   List<Interview> getInterviewJobs(long id);

   boolean rejectInterview(long id);

    void saveProfileImage(long candidateId, String image);
}