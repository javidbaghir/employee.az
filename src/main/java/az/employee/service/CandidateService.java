package az.employee.service;

import az.employee.domain.*;

import java.util.List;
import java.util.Optional;

import java.util.List;
import java.util.Optional;

public interface CandidateService {
    Candidate register(Candidate candidate);
    DataTableResult getDataTableResponse(DataTableRequest dataTableRequest);

    public long getCandidateCount();
    List<Candidate> getCandidateList(int page);

    long getPageCount();

    Optional<Candidate> getCandidateById(long id);
    Optional<Candidate> getCandidateByUserId(long userId);

    Optional<Candidate> updateProfile(long id);

    List<Application> getLastAppliedList(long id);
    List<Application> getAppliedList(long id, int page);
    long getApplicationPageCount();

    boolean cancelApplication(long id);

    List<Interview> getInterviewJobs(long id);

    boolean rejectInterview(long id);

    PageResponse<Application> getApplicationPage(PageRequest pageRequest);

    void saveProfileImage(Candidate candidate);

}
