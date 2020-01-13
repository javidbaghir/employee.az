package az.employee.validator;


import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.PARAMETER;

@Constraint(validatedBy = DuplicateEmailValidator.class)
@Target({ FIELD, PARAMETER })
@Retention(RetentionPolicy.RUNTIME)
@Documented

public @interface NotDuplicateEmail {

    String message() default "{email.duplicate}";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
