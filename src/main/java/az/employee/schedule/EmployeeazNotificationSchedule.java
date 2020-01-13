package az.employee.schedule;

import az.employee.config.EmployeeazConfiguration;
import az.employee.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import java.time.LocalDateTime;

@Component
public class EmployeeazNotificationSchedule {
    @Autowired
    private EmployeeazConfiguration configuration;

    @Autowired
    private EmailService emailService;


//    @Scheduled(fixedRate = 40*1000)
//    public void sendEmailNotfications() {
//        if (configuration.isSendNotifications()) {
//            System.out.println(LocalDateTime.now() + "  Send SMS");
//
//            emailService.sendEmail(configuration.getActivation().getFromEmail(),
//                    "c.bagirov01@mail.ru",
//                    "Hello from Employee.az",
//                    "Test Email from employee.az");
//        } else{
//            System.out.println("Notfications are turned  off");
//        }
//    }
}