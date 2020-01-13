package az.employee.repository;

import az.employee.domain.Job;
import az.employee.domain.JobCategoryCount;

import java.util.List;

public interface JobRepository {
    long getAllJobCount();
    List<JobCategoryCount> getJobCategoryCount();
    List<Job> getRecentJob();
    Job getJobDetails(long id);

}
