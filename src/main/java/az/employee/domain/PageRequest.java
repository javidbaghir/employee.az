package az.employee.domain;

import java.io.Serializable;

public class PageRequest implements Serializable {

    private int page;
    private int size;

    public PageRequest() {
        this.page = 1;
        this.size = 5;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    @Override
    public String toString() {
        return "PageRequest{" +
                "page='" + page + '\'' +
                ", size='" + size + '\'' +
                '}';
    }
}
