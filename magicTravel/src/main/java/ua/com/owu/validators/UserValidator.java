package ua.com.owu.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import ua.com.owu.entity.User;


@Component
public class UserValidator implements Validator {
    public boolean supports(Class<?> aClass) {
        return aClass.equals(User.class);
    }

    public void validate(Object target, Errors errors) {
        User user = (User) target;
        if(user.getUsername().equals("asd")){
            errors.rejectValue("name", "error", "wrong name");
        }

    }
}
