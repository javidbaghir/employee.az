package az.employee.domain;

import java.io.Serializable;

public class Tag extends BaseDomainClass implements Serializable {

    private static final long serialVersionUID = 7233430097577044734L;

    private String name;


    public Tag(long id, String name) {
        super(id);
        this.name = name;
    }

    public Tag() {
        this.name = "";
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Tag{" +
                "name='" + name + '\'' +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
