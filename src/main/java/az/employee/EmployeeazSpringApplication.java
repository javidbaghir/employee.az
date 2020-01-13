package az.employee;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.annotation.EnableScheduling;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;


@EnableScheduling
@EnableSwagger2
@SpringBootApplication
public class EmployeeazSpringApplication {

	public static void main(String[] args) {
		SpringApplication.run(EmployeeazSpringApplication.class, args);
	}

	@Bean
	public Docket getSwaggerConfig(){
		return new Docket(DocumentationType.SWAGGER_2)
				.select()
				.apis(RequestHandlerSelectors.basePackage("az.employee"))
				.paths(PathSelectors.ant("/rest/**"))
				.build();
	}

}
