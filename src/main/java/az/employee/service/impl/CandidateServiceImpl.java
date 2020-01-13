package az.employee.service.impl;

import az.employee.config.EmployeeazConfiguration;
import az.employee.domain.*;
import az.employee.repository.CandidateRepository;
import az.employee.repository.UserRepository;
import az.employee.service.CandidateService;
import az.employee.service.EmailService;
import az.employee.service.PasswordService;
import az.employee.service.TokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class CandidateServiceImpl implements CandidateService {

    @Autowired
    private PasswordService passwordService;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private TokenService tokenService;

    @Autowired
    private CandidateRepository candidateRepository;

    @Autowired
    private EmailService emailService;

    @Autowired
    private EmployeeazConfiguration configuration;

    @Transactional
    @Override
    public Candidate register(Candidate candidate) {

              /*
        1.hash password
        * 2.insert into db
            a.insert into user
            a1.insert into user role Candidate
            b.generate token
            c.save token
            d.generate activation email
            e.insert activation email
        3.send email - notification queue processor
        * */

        try {
            String hashedPassword = passwordService.hashPassword(candidate.getUser().getPassword());
            candidate.getUser().setPassword(hashedPassword);

            //  2.1.insert into user
            User user = userRepository.addUser(candidate.getUser());

            // 2.1a add candidate role to user
            userRepository.addRole(user, Role.CANDIDATE);

            //   2.2.generate token
            Token token = tokenService.generateToken(user);

            // 2.3 insert token
            token = tokenService.saveToken(token);

            //  2.4 generate activation email
            Email activationEmail = emailService.generateActivationEmail(token);

            //  2.5 insert activation email
            emailService.saveEmail(activationEmail);
        } catch (Exception e) {
            e.printStackTrace();
            //todo add logging
            throw new RuntimeException("Error adding candidate " + candidate);
        }
        return candidate;
    }


    @Override
    public DataTableResult getDataTableResponse(DataTableRequest request) {
        DataTableResult result = new DataTableResult();
        result.setDraw(request.getDraw());
        result.setRecordsTotal(userRepository.getTotalCount());
        result.setRecordsFiltered(userRepository.getFilterCount(request.getFilter()));

        List<Candidate> list = candidateRepository.getCandidateListAdmin(request.getFilter(), request.getSortColumn(), request.getSortDirection(), request.getStart(), request.getLength());
        System.out.println("list = " + list);

        result.setData(new Object[list.size()][7]);

        if (!list.isEmpty()) {
            for (int i = 0; i < list.size(); i++) {
                result.getData()[i][0] = list.get(i).getUser().getName() + " " + list.get(i).getUser().getSurname();
                result.getData()[i][1] = list.get(i).getUser().getEmail();
                result.getData()[i][2] = list.get(i).getUser().getMobile();
                result.getData()[i][3] = list.get(i).getPosition();
                result.getData()[i][4] = list.get(i).getSalaryMin() + " - " + list.get(i).getSalaryMax();
                result.getData()[i][5] = list.get(i).getAddress().getCountry().getName() + " " + list.get(i).getAddress().getCity().getName();
                result.getData()[i][6] = "<a href='viewCandidate?id=" + list.get(i).getId() + "'>View</a> "
                        + "<a href='editCandidate?id=" + list.get(i).getId() + "'>Edit</a> "
                        + "<a href='deleteCandidate?id=" + list.get(i).getId() + "'>Delete</a>";

            }
        }

        System.out.println("result = " + result);
        return result;
    }

    @Override
    public PageResponse<Application> getApplicationPage(PageRequest pageRequest) {

        PageResponse<Application> response = new PageResponse<>();
        response.setTotalCount(getApplicationPageCount());

        return response;
    }

    @Override
    public long getCandidateCount() {
        return candidateRepository.getCandidateCount();
    }

    @Override
    public Optional<Candidate> getCandidateById(long id) {

        Optional<Candidate> optionalCandidate = candidateRepository.getCandidateById(id);

        if (optionalCandidate.isPresent()) {
            Candidate candidate = optionalCandidate.get();
            //todo
            //is yerleri
            //tehsil yerleri
            //sertifikatlar
            //dil bilikleri
            //diger bilikler
            //sosial hesablar
            //teg ler
//
//            List<JobHistory> jobHistories = candidateRepository.getWorkExperience(candidate.getId());
//            List<EducationLevel> educationLevel = candidateRepository.getEducationList(candidate.getId());
//            List<Certificate> certificate = candidateRepository.getCertificateList(candidate.getId());
//            List<Language> language = candidateRepository.getLanguageList(candidate.getId());
//
            candidate.setEducationLevels(candidateRepository.getEducationList(id));
            candidate.setCertificates(candidateRepository.getCertificateList(id));
            candidate.setLanguages(candidateRepository.getLanguageList(id));
            candidate.setJobHistories(candidateRepository.getWorkExperience(id));
            candidate.setTags(candidateRepository.getTagList(id));

        }

        return optionalCandidate;
    }

    @Override
    public Optional<Candidate> getCandidateByUserId(long userId) {

        Optional<Candidate> optionalCandidate = candidateRepository.getCandidateByUserId(userId);

        if (optionalCandidate.isPresent()) {
            Candidate candidate = optionalCandidate.get();
            //todo
            //is yerleri
            //tehsil yerleri
            //sertifikatlar
            //dil bilikleri
            //diger bilikler
            //sosial hesablar
            //teg ler
//
//            List<JobHistory> jobHistories = candidateRepository.getWorkExperience(candidate.getId());
//            List<EducationLevel> educationLevel = candidateRepository.getEducationList(candidate.getId());
//            List<Certificate> certificate = candidateRepository.getCertificateList(candidate.getId());
//            List<Language> language = candidateRepository.getLanguageList(candidate.getId());
//
            candidate.setEducationLevels(candidateRepository.getEducationList(userId));
            candidate.setCertificates(candidateRepository.getCertificateList(userId));
            candidate.setLanguages(candidateRepository.getLanguageList(userId));
            candidate.setJobHistories(candidateRepository.getWorkExperience(userId));
            candidate.setTags(candidateRepository.getTagList(userId));
        }

        return optionalCandidate;
    }

    @Override
    public List<Candidate> getCandidateList(int page) {
        return candidateRepository.getCandidateList(page);
    }

    @Override
    public long getPageCount() {
        long candidateCount = candidateRepository.getCandidateCount();
        long candidatePageCount = candidateCount / configuration.getCandidatePageCount();
        if (candidateCount % configuration.getCandidatePageCount() > 0) {
            candidatePageCount++;
        }

        return candidatePageCount;
    }

    @Override
    public Optional<Candidate> updateProfile(long id) {

        return Optional.empty();
    }

    @Override
    public List<Application> getLastAppliedList(long id) {

        return candidateRepository.getLastAppliedList(id);
    }

    @Override
    public List<Application> getAppliedList(long id, int page) {
        return candidateRepository.getAppliedList(id, page);
    }

    @Override
    public long getApplicationPageCount() {
        long applicationCount = candidateRepository.getApplicationCount();
        long count = applicationCount / configuration.getApplicationPageCount();
        if (applicationCount % configuration.getApplicationPageCount() > 0){
            count++;
        }

        return count;
    }



    @Override
    public boolean cancelApplication(long id) {
        return candidateRepository.cancelApplication(id);
    }

    @Override
    public List<Interview> getInterviewJobs(long id) {
        return candidateRepository.getInterviewJobs(id);
    }

    @Override
    public boolean rejectInterview(long id) {
        return candidateRepository.rejectInterview(id);
    }

    @Transactional
    @Override
    public void saveProfileImage(Candidate candidate) {
        candidateRepository.saveProfileImage(candidate.getUser().getId(), candidate.getProfileImage());
    }
}
