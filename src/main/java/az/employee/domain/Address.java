package az.employee.domain;

import java.time.LocalDateTime;

public class Address extends BaseDomainClass{
    private Country country;
    private City city;
    private String info;


    public Address() {
        this.country = new Country();
        this.city = new City();
    }



    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    @Override
    public String toString() {
        return "Address{" +
                "country=" + country +
                ", city=" + city +
                ", info='" + info + '\'' +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
