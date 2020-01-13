package az.employee.domain;

public enum ApplicationStatus {

    CANDIDATE_CANCELED(0),
    JOBCANCELED(1);

    private int value;

    ApplicationStatus(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    public static ApplicationStatus fromStatus(int value){
        ApplicationStatus applicationStatus = null;

        if (value == 0){
            applicationStatus = CANDIDATE_CANCELED;
        } else if(value == 1){
            applicationStatus = JOBCANCELED;
        } else {
            throw new RuntimeException("Invalid application status value = " +value);
        }
        return applicationStatus;
    }
}
