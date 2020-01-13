package az.employee.service;

import az.employee.domain.Job;
import az.employee.domain.JobCategoryCount;

import java.util.List;

public interface JobService {
    long getAllJobCount();
    List<JobCategoryCount> getJobCategoryCount();
    List<Job> getRecentJobList();
    Job getJobDetails(long id);
}
