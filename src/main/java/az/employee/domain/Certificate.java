package az.employee.domain;

import java.io.Serializable;
import java.time.LocalDate;

public class Certificate extends BaseDomainClass implements Serializable {
    private static final long serialVersionUID = 1914672971655534196L;

    private long candidateId;
    private LocalDate certificateDate;
    private String title;
    private String company;
    private String file;

    public Certificate(long id, long candidateId, LocalDate certificateDate, String title, String company, String file) {
        super(id);
        this.candidateId = candidateId;
        this.certificateDate = certificateDate;
        this.title = title;
        this.company = company;
        this.file = file;
    }



    public Certificate() {
        this.candidateId = 0L;
        this.certificateDate = null;
        this.title = "";
        this.company = "";
        this.file = "";

    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }



    public long getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(long candidateId) {
        this.candidateId = candidateId;
    }

    public LocalDate getCertificateDate() {
        return certificateDate;
    }

    public void setCertificateDate(LocalDate certificateDate) {
        this.certificateDate = certificateDate;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    @Override
    public String toString() {
        return "Certificate{" +
                "candidateId=" + candidateId +
                ", certificateDate=" + certificateDate +
                ", title='" + title + '\'' +
                ", company='" + company + '\'' +
                ", file='" + file + '\'' +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }

}
