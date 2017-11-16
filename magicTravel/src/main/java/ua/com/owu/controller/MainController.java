package ua.com.owu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import ua.com.owu.entity.Trip;
import ua.com.owu.service.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.Principal;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    TripService tripService;

    @GetMapping({"/", "/index"})
    public String index(){
        return "index";
    }
    @GetMapping({"/london"})
    public String london(){
        return "london";
    }
    @GetMapping({"/paris"})
    public String paris(){
        return "paris";
    }
    @GetMapping({"/lviv"})
    public String lviv(){
        return "lviv";
    }
    @GetMapping({"/krakow"})
    public String krakow(){
        return "krakow";
    }
    @GetMapping({"/login"})
    public String login(){
        return "login";
    }
    @GetMapping("/registraction")
    public String toRegistraction() {
        return "registraction";
    }
    @GetMapping("/ordering")
    public String toOrdering(Model model, Principal principal) {
        List<Trip> all = tripService.findAll();
        model.addAttribute("tripsList", all);

        return "ordering";
    }
    @GetMapping("/afterOrder")
    public String afterOrder(){
        return "afterOrder";
    }
    @GetMapping("/info")
    public String toInfoPage() {
        return "info";
    }


    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";

    }

    @GetMapping("/admin")
    public String adminPage(ModelMap model, Principal principal){
        model.addAttribute("principal", principal);
        model.addAttribute("user", getPrincipal());
        return "admin";
    }

    @GetMapping("/Access_Denied")
    public String accessDeniedPage(ModelMap model){
        model.addAttribute("user", getPrincipal());
        return "accessDenied";
    }

    @GetMapping("/admin/all")
    public String toAddProduct(Model model) {
        return "admin";
    }


//    @Autowired
//    UserValidator userValidator;
//
//    @InitBinder
//    public void bind(WebDataBinder binder) {
//        binder.addValidators(userValidator);
//
//    }

//    @GetMapping("product{id}")
//    public String singleUser(@PathVariable("id") int id,Model model){
//        Product product = productService.findOne(id);
//        return "singleUser";
//    }

    @GetMapping("/singleUser")
    public String singleUser() {
        return "singleUser";
    }


    private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if(principal instanceof UserDetails){
            userName = ((UserDetails) principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }

    @GetMapping({"/cabina"})
    public String cabina(Model model, Principal principal) {
        model.addAttribute("user", principal != null?principal.getName():"");
        return "cabina";
    }

}