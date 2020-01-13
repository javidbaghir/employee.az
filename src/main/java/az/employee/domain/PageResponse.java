package az.employee.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class PageResponse<T> implements Serializable {

    private List<T> data;
    private long totalCount;
    private long itemCount;

    public PageResponse() {
        this.data = new ArrayList<>();
        this.totalCount = 0;
        this.itemCount = 0;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    public long getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(long totalCount) {
        this.totalCount = totalCount;
    }

    public long getItemCount() {
        return itemCount;
    }

    public void setItemCount(long itemCount) {
        this.itemCount = itemCount;
    }

    @Override
    public String toString() {
        return "PageResponse{" +
                "totalCount=" + totalCount +
                ", itemCount=" + itemCount +
                ", data=" + data +
                '}';
    }
}
