package az.employee.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/company")
@Controller
public class CompanyController {

    @GetMapping("/")
    public String index() {
        return "company/index";
    }
}
