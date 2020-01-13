package az.employee.domain;

import java.io.Serializable;
import java.time.LocalDateTime;

public class City extends BaseDomainClass implements Serializable {
    private static final long serialVersionUID = -258656115304468228L;
    private String name;

    public long getCountryId() {
        return countryId;
    }

    public void setCountryId(long countryId) {
        this.countryId = countryId;
    }

    private long countryId;

    public City(long id,  String name) {
        super(id);
        this.name = name;
    }

    public City() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "City{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", countryId='" + countryId + '\'' +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
