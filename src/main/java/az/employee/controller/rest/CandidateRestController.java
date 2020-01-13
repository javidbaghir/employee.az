package az.employee.controller.rest;


import az.employee.domain.*;
import az.employee.service.CandidateService;
import az.employee.service.FileStorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.server.ResponseStatusException;

import javax.servlet.http.HttpSession;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

@RequestMapping("candidate/rest")
@RestController
public class CandidateRestController {

    @Autowired
    private CandidateService candidateService;

    @Autowired
    private FileStorageService fileStorageService;


    @GetMapping({"/", "/index"})
    public List<Application> index(HttpSession session) {

        Candidate candidate = (Candidate) session.getAttribute("candidate");

        List<Application> jobList = candidateService.getLastAppliedList(candidate.getId());

        return jobList;
    }

    @GetMapping("/applications")
    public List<Application> applications(HttpSession session,
                                          @RequestParam(name = "page") int page){

        Candidate candidate = (Candidate) session.getAttribute("candidate");
        List<Application> jobList = candidateService.getAppliedList(candidate.getId(), page);

        return jobList;
    }



    @PutMapping("/cancel-application")
    public boolean deleteAppliedJob(@RequestParam(name = "id") long id){

        return candidateService.cancelApplication(id);
    }

    @GetMapping("/interview")
    public List<Interview> getInterviewJobs(HttpSession session){
        Candidate candidate = (Candidate) session.getAttribute("candidate");

        List<Interview> interviewList = candidateService.getInterviewJobs(candidate.getId());
        System.out.println("Controller = " + interviewList);

        return interviewList;
    }

    @PutMapping("/reject-interview")
    public boolean rejectInterview(@RequestParam(name = "id") long id){
        return candidateService.rejectInterview(id);
    }

    @GetMapping("/page")
    public PageResponse<Application> getApplicationsList(
            @RequestParam(name = "page", required = false, defaultValue = "1") int page,
            @RequestParam(name = "size", required = false, defaultValue = "5") int size
    ){
        PageRequest pageRequest = new PageRequest();
        pageRequest.setPage(page);
        pageRequest.setSize(size);

        PageResponse<Application> applicationPageResponse = candidateService.getApplicationPage(pageRequest);

        return applicationPageResponse;
    }


    @PostMapping("/profile/image")
    public void uploadProfileImage(
            HttpSession session,
            @RequestParam(name = "image") MultipartFile image
            ){
        Candidate candidateId = (Candidate) session.getAttribute("candidate");
        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId.getId());
        if (optionalCandidate.isPresent()){
            Candidate candidate = optionalCandidate.get();
            String profileImage = fileStorageService.saveFile(candidateId.getId(), image);
            candidate.setProfileImage(profileImage);
            candidateService.saveProfileImage(candidate);
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Candidate Id " + candidateId.getId() + "not found!");
        }

    }

    @GetMapping("/profile/image")
    public ResponseEntity<Resource> getImage(HttpSession session) {
        Candidate candidateId = (Candidate) session.getAttribute("candidate");

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId.getId());
        if (optionalCandidate.isPresent()) {

            try {
                Candidate candidate = optionalCandidate.get();
                Resource resource = fileStorageService.getFile(candidate.getProfileImage());
                String contentType = Files.probeContentType(Paths.get(candidate.getProfileImage()));

                System.out.println("image = " + candidate.getProfileImage());
                System.out.println("contentType = " + contentType);

                HttpHeaders headers = new HttpHeaders();
                headers.add("Content-Type", contentType);
                return new ResponseEntity<>(resource, headers, HttpStatus.OK);
            } catch (Exception e) {
                e.printStackTrace();
                throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error getting profile image");
            }
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Candidate not found");
        }


    }


//    @PostMapping("/cancel-application")
//    public boolean cancelApplication(@RequestParam(name = "id") long id) {
//        boolean  result = candidateService.cancelApplication(id);
//        if(result) {
//            System.out.println("Silindi");
//        } else {
//            System.out.println("Silinmedi");;
//        }
//
//        return result;
//    }
}