package az.employee.domain;

public class CandidateForm {

    private Candidate candidate;
    private JobHistory jobHistory;
    private Language language;
    private Certificate certificate;
    private EducationLevel educationLevel;


    public CandidateForm() {
        this.candidate = new Candidate();
        this.jobHistory = new JobHistory();
        this.language = new Language();
        this.certificate = new Certificate();
        this.educationLevel = new EducationLevel();
    }

    public Candidate getCandidate() {
        return candidate;
    }

    public void setCandidate(Candidate candidate) {
        this.candidate = candidate;
    }

    public JobHistory getJobHistory() {
        return jobHistory;
    }

    public void setJobHistory(JobHistory jobHistory) {
        this.jobHistory = jobHistory;
    }

    public Language getLanguage() {
        return language;
    }

    public void setLanguage(Language language) {
        this.language = language;
    }

    public Certificate getCertificate() {
        return certificate;
    }

    public void setCertificate(Certificate certificate) {
        this.certificate = certificate;
    }

    public EducationLevel getEducationLevel() {
        return educationLevel;
    }

    public void setEducationLevel(EducationLevel educationLevel) {
        this.educationLevel = educationLevel;
    }

    @Override
    public String toString() {
        return "CandidateForm{" +
                "candidate=" + candidate +
                ", jobHistory=" + jobHistory +
                ", language=" + language +
                ", certificate=" + certificate +
                ", educationLevel=" + educationLevel +
                '}';
    }
}
