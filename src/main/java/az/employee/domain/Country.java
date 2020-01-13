package az.employee.domain;

import java.io.Serializable;
import java.time.LocalDateTime;

public class Country extends BaseDomainClass implements Serializable {
    private String name;


    public Country(long id, String name) {
        super(id);
        this.name = name;
    }

    public Country() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Country{" +
                "name='" + name + '\'' +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
