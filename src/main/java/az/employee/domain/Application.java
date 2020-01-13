package az.employee.domain;

import java.io.Serializable;
import java.time.LocalDateTime;

public class Application extends BaseDomainClass implements Serializable {
    private static final long serialVersionUID = -7988970711110141599L;


    private Candidate candidate;
    private Job job;
    private ApplicationStatus applicationStatus;
    private LocalDateTime applicationDate;



    public Application(long id, Candidate candidate, Job job, ApplicationStatus applicationStatus, LocalDateTime applicationDate) {
        super(id);
        this.candidate = candidate;
        this.job = job;
        this.applicationStatus = applicationStatus;
        this.applicationDate = applicationDate;
    }



    public Application() {
        this.candidate = new Candidate();
        this.job = new Job();
        this.applicationStatus = ApplicationStatus.CANDIDATE_CANCELED;
        this.applicationDate = null;
    }

    public Candidate getCandidate() {
        return candidate;
    }

    public void setCandidate(Candidate candidate) {
        this.candidate = candidate;
    }

    public Job getJob() {
        return job;
    }

    public void setJob(Job job) {
        this.job = job;
    }

    public ApplicationStatus getApplicationStatus() {
        return applicationStatus;
    }

    public void setApplicationStatus(ApplicationStatus applicationStatus) {
        this.applicationStatus = applicationStatus;
    }

    public LocalDateTime getApplicationDate() {
        return applicationDate;
    }

    public void setApplicationDate(LocalDateTime applicationDate) {
        this.applicationDate = applicationDate;
    }

    @Override
    public String toString() {
        return "Application{" +
                "candidate=" + candidate +
                ", job=" + job +
                ", applicationStatus=" + applicationStatus +
                ", applicationDate=" + applicationDate +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
