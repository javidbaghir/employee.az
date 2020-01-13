package az.employee.domain;

import com.fasterxml.jackson.databind.ser.Serializers;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.time.LocalDateTime;

public class Interview extends BaseDomainClass implements Serializable {

    private Job job;
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDateTime interviewDate;
    private String info;

    public Interview(long id, Job job, LocalDateTime interviewDate, String info) {
        super(id);
        this.job = job;
        this.interviewDate = interviewDate;
        this.info = info;
    }

    public Interview() {
        this.job = new Job();
        this.interviewDate = null;
        this.info = "";

    }

    public Job getJob() {
        return job;
    }

    public void setJob(Job job) {
        this.job = job;
    }

    public LocalDateTime getInterviewDate() {
        return interviewDate;
    }

    public void setInterviewDate(LocalDateTime interviewDate) {
        this.interviewDate = interviewDate;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    @Override
    public String toString() {
        return "Interview{" +
                "job=" + job +
                ", interviewDate=" + interviewDate +
                ", info='" + info + '\'' +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
