package az.employee.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix = "employeeaz")
public class EmployeeazConfiguration {

    private ActivationConfig activation;
    private int candidatePageCount;
    private int applicationPageCount;
    private String baseUrl;
    private String uploadDir;

    private boolean sendNotifications;

    public boolean isSendNotifications() {
        return sendNotifications;
    }

    public void setSendNotifications(boolean sendNotifications) {
        this.sendNotifications = sendNotifications;
    }




    public ActivationConfig getActivation() {
        return activation;
    }

    public void setActivation(ActivationConfig activation) {
        this.activation = activation;
    }


    public String getBaseUrl() {
        return baseUrl;
    }

    public void setBaseUrl(String baseUrl) {
        this.baseUrl = baseUrl;
    }


    public int getCandidatePageCount() {
        return candidatePageCount;
    }

    public void setCandidatePageCount(int candidatePageCount) {
        this.candidatePageCount = candidatePageCount;
    }

    public int getApplicationPageCount() {
        return applicationPageCount;
    }

    public void setApplicationPageCount(int applicationPageCount) {
        this.applicationPageCount = applicationPageCount;
    }

    public String getUploadDir() {
        return uploadDir;
    }

    public void setUploadDir(String uploadDir) {
        this.uploadDir = uploadDir;
    }

    @Override
    public String toString() {
        return "EmployeeazConfiguration{" +
                "activation=" + activation +
                ", candidatePageCount=" + candidatePageCount +
                ", applicationPageCount=" + applicationPageCount +
                ", baseUrl='" + baseUrl + '\'' +
                ", uploadDir='" + uploadDir + '\'' +
                '}';
    }
}
