package az.employee.controller;


import az.employee.domain.DataTableRequest;
import az.employee.domain.DataTableResult;
import az.employee.service.CandidateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/admin")
@Controller
public class AdminController {

    @Autowired
    private CandidateService candidateService;

    @GetMapping({"/", "/index"})
    public String index() {
        return "admin/hrms/index";
    }

    @GetMapping("/companies")
    public String departments() {
        return "admin/hrms/companies";
    }

    @GetMapping("/candidates")
    public String employee() {
        return "admin/hrms/candidates";
    }

    @GetMapping("getAjaxUser")
    @ResponseBody
    public DataTableResult getAjaxData(@RequestParam(name = "draw") int draw,
                                        @RequestParam(name = "start") int start,
                                        @RequestParam(name = "length") int length,
                                        @RequestParam(name = "order[0][column]") int sortColumn,
                                        @RequestParam(name = "order[0][dir]") String sortDirection,
                                        @RequestParam(name = "search[value]") String searchValue){
        System.out.println("start");
        DataTableRequest dataTableRequest = new DataTableRequest();
        dataTableRequest.setDraw(draw);
        dataTableRequest.setStart(start);
        dataTableRequest.setLength(length);
        dataTableRequest.setSortColumn(sortColumn);
        dataTableRequest.setSortDirection(sortDirection);
        dataTableRequest.setFilter(searchValue);

        return candidateService.getDataTableResponse(dataTableRequest);

    }
}
