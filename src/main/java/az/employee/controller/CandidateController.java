package az.employee.controller;


import az.employee.domain.*;
import az.employee.service.CandidateService;
import az.employee.service.CommonService;
import az.employee.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Optional;

@RequestMapping("/candidate")
@Controller
public class CandidateController {

    @Autowired
    private CandidateService candidateService;

    @Autowired
    private CommonService commonService;

    @Autowired
    private JobService jobService;

    @GetMapping({"/", "/index"})
    public ModelAndView index(HttpSession session) {


        ModelAndView modelAndView = new ModelAndView("candidate/index");

//        Candidate candidate = (Candidate) session.getAttribute("candidate");

        User user = (User) session.getAttribute("user");
        Optional<Candidate> optionalCandidate = candidateService.getCandidateByUserId(user.getId());
        if (optionalCandidate.isPresent()) {
            Candidate candidate = optionalCandidate.get();
            session.setAttribute("candidate", candidate);

            List<Application> jobList = candidateService.getLastAppliedList(candidate.getId());

            modelAndView.addObject("jobList", jobList);

        }
        return modelAndView;

    }


    @GetMapping("/profile")
    public ModelAndView profile(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView("candidate/profile");
        return modelAndView;
    }


    @GetMapping("/applications")
    public ModelAndView applications(HttpSession session,
                                     @RequestParam(name = "page", defaultValue = "1") int page) {

        ModelAndView modelAndView = new ModelAndView("candidate/applications");
        Candidate candidate = (Candidate) session.getAttribute("candidate");
        List<Application> jobList = candidateService.getAppliedList(candidate.getId(), page);
        modelAndView.addObject("appliedJob",jobList);
        modelAndView.addObject("currentPage", page);
        modelAndView.addObject("pageCount", candidateService.getApplicationPageCount());
        return modelAndView;
    }

//    @PostMapping("/cancel-application")
//    public ModelAndView cancelApplication(@RequestParam(name = "id") long id,
//                                          RedirectAttributes redirectAttributes) {
//        boolean  result = candidateService.cancelApplication(id);
//        ModelAndView modelAndView = new ModelAndView("redirect:/candidate/applications");
//        if(result) {
//            redirectAttributes.addFlashAttribute("applicationResult", "Job application cancelled");
//        } else {
//            redirectAttributes.addFlashAttribute("applicationResult", "Job application cancelled");
//        }
//
//        return modelAndView;
//    }


//    @GetMapping("/application")
//    public String app(@RequestParam(name = "id") String id){
//        System.out.println(id);
//        return "candidate/applications";
//    }
//    @GetMapping("/applicationReject")
//    public ModelAndView rejectApp()

    @GetMapping("/addAlert")
    public String addAlert() {
        return "candidate/addAlert";
    }

    @GetMapping("/companies")
    public String companies() {
        return "candidate/companies";
    }

    @GetMapping("/editProfile")
    public ModelAndView editProfile(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView("candidate/editProfile");

        Candidate candidate = (Candidate) session.getAttribute("candidate");

        List<Country> countryList = commonService.getCountryList();
        System.out.println("country list = " + countryList);
        modelAndView.addObject("countryList", countryList);
        List<City> cityList = commonService.getCityList(candidate.getAddress().getCountry().getId());
        System.out.println("city list = " + cityList);
        modelAndView.addObject("cityList", cityList);

        return modelAndView;
    }

    @GetMapping("city-list")
    @ResponseBody
    public List<City> getCountryCityListAjax(@RequestParam(name = "country_id") long countryId) {
        return commonService.getCityList(countryId);
    }

    @GetMapping("/interviewInvitations")
    public String interviewInvitations() {
        return "candidate/interviewInvitations";
    }

    @GetMapping("/jobAlerts")
    public String jobAlerts() {
        return "candidate/jobAlerts";
    }

    @GetMapping("/messaging")
    public String messaging() {
        return "candidate/messaging";
    }

    @GetMapping("/message")
    public String message() {
        return "candidate/message";
    }

    @GetMapping("/notifications")
    public String notifications() {
        return "candidate/notifications";
    }

    @GetMapping("/jobDetails")
    public ModelAndView jobDetails(@RequestParam(name = "id") long id) {

        ModelAndView modelAndView = new ModelAndView("candidate/jobDetails");

       Job job = jobService.getJobDetails(id);

       modelAndView.addObject("job", job);

        return modelAndView;
    }
}
