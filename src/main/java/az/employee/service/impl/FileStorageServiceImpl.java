package az.employee.service.impl;

import az.employee.config.EmployeeazConfiguration;
import az.employee.service.FileStorageService;
import az.employee.util.FileUtility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileUrlResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Service
public class FileStorageServiceImpl implements FileStorageService {

    @Autowired
    private EmployeeazConfiguration employeeazConfiguration;
    @Override
    public String saveFile(long candidateId, MultipartFile file) {

        String filePart2 = "";

        try {


        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");

        String filePart1 = employeeazConfiguration.getUploadDir() + File.separator;


         filePart2 = String.format("%s%s%s%s",
                            candidateId,
                            File.separator,
                            LocalDateTime.now().format(formatter),
                            FileUtility.getFileExtension(file.getOriginalFilename())
                            );

        String fileLocation = filePart1 + filePart2;

        System.out.println("File Location" + fileLocation);

        Path filePath = Paths.get(fileLocation);

        if (Files.notExists(filePath.getParent())){
            System.out.println("parent yoxdur, yenisini yarat!");
                Files.createDirectory(filePath.getParent());
        }

        Files.copy(file.getInputStream(), filePath);

        } catch (IOException e) {
            e.printStackTrace();
        }
        return filePart2;
    }

    @Override
    public Resource getFile(String filename) {
        String fileLocation = employeeazConfiguration.getUploadDir() + File.separator + filename;
        try {
            return new FileUrlResource(fileLocation);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Error getting file " + filename);
        }
    }
}
