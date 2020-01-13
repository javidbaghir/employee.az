package az.employee.domain;

import java.io.Serializable;

public class Language extends BaseDomainClass implements Serializable {

    private static final long serialVersionUID = 1660756986210901357L;

    private long candidateId;
    private String name;
    private int reading;
    private int speaking;
    private int writing;
    private int listening;

    public Language(long id, long candidateId, String name, int reading, int speaking, int writing, int listening) {
        super(id);
        this.candidateId = candidateId;
        this.name = name;
        this.reading = reading;
        this.speaking = speaking;
        this.writing = writing;
        this.listening = listening;
    }

    public Language() {
    }



    public long getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(long candidateId) {
        this.candidateId = candidateId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getReading() {
        return reading;
    }

    public void setReading(int reading) {
        this.reading = reading;
    }

    public int getSpeaking() {
        return speaking;
    }

    public void setSpeaking(int speaking) {
        this.speaking = speaking;
    }

    public int getWriting() {
        return writing;
    }

    public void setWriting(int writing) {
        this.writing = writing;
    }

    public int getListening() {
        return listening;
    }

    public void setListening(int listening) {
        this.listening = listening;
    }

    @Override
    public String toString() {
        return "Language{" +
                "candidateId='" + candidateId + '\'' +
                ", name='" + name + '\'' +
                ", reading='" + reading + '\'' +
                ", speaking='" + speaking + '\'' +
                ", writing='" + writing + '\'' +
                ", listening='" + listening + '\'' +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
