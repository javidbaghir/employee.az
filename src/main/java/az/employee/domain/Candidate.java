package az.employee.domain;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Candidate extends BaseDomainClass {
    private static final long serialVersionUID = 422170214390401603L;

    private User user;
    private String profileImage;
    private String videoFile;
    private Address address;
    private LocalDate birthDate;
    private EducationLevel degree;
    private String position;
    private BigDecimal salaryMin;
    private BigDecimal salaryMax;
    private List<EducationLevel> educationLevels;
    private List<Certificate> certificates;
    private List<JobHistory> jobHistories;
    private List<Language> languages;
    private List<Tag> tags;

    public Candidate() {
        this.user = new User();
        this.user.getRoleList().add(Role.CANDIDATE);
        this.profileImage = "";
        this.videoFile = "";
        this.address = new Address();
        this.birthDate = null;
        this.degree = null;
        this.position = "";
        this.salaryMin = null;
        this.salaryMax = null;
        this.educationLevels = new ArrayList<>();
        this.jobHistories = new ArrayList<>();
        this.certificates = new ArrayList<>();
        this.languages = new ArrayList<>();
        this.tags = new ArrayList<>();

    }


    //    public Candidate() {
//        this.user = new User();
//        this.user.getRoleList().add(Role.CANDIDATE);
//        this.profileImage = "";
//        this.videoFile = "";
//        this.address = new Address();
//        this.birthDate = null;
//        this.degree = null;
//    }


    public List<EducationLevel> getEducationLevels() {
        return educationLevels;
    }

    public void setEducationLevels(List<EducationLevel> educationLevels) {
        this.educationLevels = educationLevels;
    }

    public List<Certificate> getCertificates() {
        return certificates;
    }

    public void setCertificates(List<Certificate> certificates) {
        this.certificates = certificates;
    }

    public List<JobHistory> getJobHistories() {
        return jobHistories;
    }

    public void setJobHistories(List<JobHistory> jobHistories) {
        this.jobHistories = jobHistories;
    }

    public List<Language> getLanguages() {
        return languages;
    }

    public void setLanguages(List<Language> languages) {
        this.languages = languages;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(String profileImage) {
        this.profileImage = profileImage;
    }

    public String getVideoFile() {
        return videoFile;
    }

    public void setVideoFile(String videoFile)
    {
        this.videoFile = videoFile;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }

    public EducationLevel getDegree() {
        return degree;
    }

    public void setDegree(EducationLevel degree) {
        this.degree = degree;
    }

    public BigDecimal getSalaryMin() {
        return salaryMin;
    }

    public void setSalaryMin(BigDecimal salaryMin) {
        this.salaryMin = salaryMin;
    }

    public BigDecimal getSalaryMax() {
        return salaryMax;
    }

    public void setSalaryMax(BigDecimal salaryMax) {
        this.salaryMax = salaryMax;
    }

    public List<Tag> getTags() {
        return tags;
    }

    public void setTags(List<Tag> tags) {
        this.tags = tags;
    }

    @Override
    public String toString() {
        return "Candidate{" +
                "user=" + user +
                ", profileImage='" + profileImage + '\'' +
                ", videoFile='" + videoFile + '\'' +
                ", address=" + address +
                ", birthDate=" + birthDate +
                ", degree=" + degree +
                ", position='" + position + '\'' +
                ", salaryMin=" + salaryMin +
                ", salaryMax=" + salaryMax +
                ", educationLevels=" + educationLevels +
                ", certificates=" + certificates +
                ", jobHistories=" + jobHistories +
                ", languages=" + languages +
                ", tags=" + tags +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
