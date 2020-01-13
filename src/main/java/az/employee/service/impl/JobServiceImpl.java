package az.employee.service.impl;

import az.employee.domain.Job;
import az.employee.domain.JobCategoryCount;
import az.employee.repository.JobRepository;
import az.employee.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class JobServiceImpl implements JobService {

    @Autowired
    JobRepository jobRepository;

    @Override
    public long getAllJobCount() {
        return jobRepository.getAllJobCount();
    }

    @Override
    public List<JobCategoryCount> getJobCategoryCount() {
        return jobRepository.getJobCategoryCount();
    }

    @Override
    public List<Job> getRecentJobList() {
        return jobRepository.getRecentJob();
    }

    @Override
    public Job getJobDetails(long id) {

        return jobRepository.getJobDetails(id);
    }
}
