package az.employee.domain;

import java.io.Serializable;
import java.time.LocalDate;

public class JobHistory extends BaseDomainClass implements Serializable {
    private static final long serialVersionUID = -7483342635347140361L;

    private long candidateId;
    private String position;
    private LocalDate startDate;
    private LocalDate endDate;
    private long countryId;
    private Country country;
    private long cityId;
    private City city;
    private String organization;
    private String info;

    public JobHistory() {
        this.country = new Country();
        this.city = new City();
    }


    public JobHistory(long id, long candidateId, String position, LocalDate startDate, LocalDate endDate, long countryId, Country country, long cityId, City city, String organization, String info) {
        super(id);
        this.candidateId = candidateId;
        this.position = position;
        this.startDate = startDate;
        this.endDate = endDate;
        this.countryId = countryId;
        this.country = country;
        this.cityId = cityId;
        this.city = city;
        this.organization = organization;
        this.info = info;
    }
    public long getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(long candidateId) {
        this.candidateId = candidateId;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
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

    public long getCountryId() {
        return countryId;
    }

    public void setCountryId(long countryId) {
        this.countryId = countryId;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public long getCityId() {
        return cityId;
    }

    public void setCityId(long cityId) {
        this.cityId = cityId;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    @Override
    public String toString() {
        return "JobHistory{" +
                "candidateId=" + candidateId +
                ", position='" + position + '\'' +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", countryId=" + countryId +
                ", country=" + country +
                ", cityId=" + cityId +
                ", city=" + city +
                ", organization='" + organization + '\'' +
                ", info='" + info + '\'' +
                '}';
    }
}
