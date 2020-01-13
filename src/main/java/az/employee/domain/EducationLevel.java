package az.employee.domain;

import java.io.Serializable;
import java.time.LocalDate;

public class EducationLevel extends BaseDomainClass implements Serializable {
    private static final long serialVersionUID = -2735863491419012583L;

    private long candidateId;
    private String organizationName;
    private String educationLevelName;
    private LocalDate startDate;
    private LocalDate endDate;


    public EducationLevel(long id, String organizationName) {
        super(id);
        this.candidateId = candidateId;
        this.organizationName = organizationName;
        this.educationLevelName = educationLevelName;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public EducationLevel() {
        this.candidateId = 0;
        this.organizationName = "";
        this.educationLevelName = "";
        this.startDate = null;
        this.endDate = null;
    }


    public long getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(long candidateId) {
        this.candidateId = candidateId;
    }

    public String getOrganizationName() {
        return organizationName;
    }

    public void setOrganizationName(String organizationName) {
        this.organizationName = organizationName;
    }

    public String getEducationLevelName() {
        return educationLevelName;
    }

    public void setEducationLevelName(String educationLevelName) {
        this.educationLevelName = educationLevelName;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }

    @Override
    public String toString() {
        return "EducationLevel{" +
                "candidateId=" + candidateId +
                ", organizationName='" + organizationName + '\'' +
                ", educationLevelName='" + educationLevelName + '\'' +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
