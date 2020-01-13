package az.employee.security;

import az.employee.domain.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private EmployeeUserDetailsService userDetailsService;

    @Autowired
    private EmployeeAuthenticationSuccessHandler authenticationSuccessHandler;

    @Autowired
    private EmployeeAuthenticationFailureHandler authenticationFailureHandler;

//    @Override
//    public void configure(WebSecurity web) throws Exception {
//        web.ignoring()
//                .antMatchers("/resources/**", "/images/**", "/css/**", "/fonts/**", "/js/**", "/assets/**");
//    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.authorizeRequests()
                .antMatchers("/admin/**").hasRole("ADMIN")
                .antMatchers("/candidate/**").hasAnyRole("CANDIDATE", "ADMIN")
                .antMatchers("/company/**").hasAnyRole("COMPANY", "ADMIN")
                .antMatchers("/").permitAll()
            .and().csrf().disable()
            .formLogin()
            .loginPage("/login").permitAll()
            .usernameParameter("email")
            .successHandler(authenticationSuccessHandler)
            .failureHandler(authenticationFailureHandler)
        .and()
                .logout()
                .logoutUrl("/logout")
                .invalidateHttpSession(true)
                .deleteCookies("JSESSIONID")
                .clearAuthentication(true)
                .logoutSuccessUrl("/");

//
//        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
//                .and()
//                .authorizeRequests()
//                .antMatchers(HttpMethod.POST, "/candidate/rest/*").hasAnyRole(
//                Role.CANDIDATE.name(),
//                Role.ADMIN.name()
//        )
//                .antMatchers(HttpMethod.PUT, "/candidate/rest/*").hasAnyRole(
//                Role.CANDIDATE.name(),
//                Role.ADMIN.name()
//        )
//                .antMatchers(HttpMethod.DELETE, "/candidate/rest/*").hasAnyRole(
//                Role.CANDIDATE.name(),
//                Role.ADMIN.name()
//        )
//
//                .antMatchers(HttpMethod.GET, "/candidate/rest/*").permitAll()
//                .and().httpBasic()
//                .and()
//                .formLogin().disable()
//                .csrf().disable();


    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(AuthenticationProvider());
    }

    @Bean
        public AuthenticationProvider AuthenticationProvider(){
            DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();

            authenticationProvider.setUserDetailsService(userDetailsService);
            authenticationProvider.setPasswordEncoder(getPasswordEncoder());

            return authenticationProvider;
    }


    @Bean
    public PasswordEncoder getPasswordEncoder(){
        return new BCryptPasswordEncoder();
    }
}