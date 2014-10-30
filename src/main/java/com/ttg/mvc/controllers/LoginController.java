package com.ttg.mvc.controllers;

import com.ttg.mvc.beans.ConsultantInfo;
import com.ttg.mvc.beans.RegistrationForm;
import com.ttg.mvc.service.ConsultantInfoService;
import javax.validation.Valid;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

    private final Logger log = Logger.getLogger(LoginController.class);

    @Autowired
    private ConsultantInfoService consultantInfoService;

    @RequestMapping("/login")
    public String giveForm(Model model) {
        model.addAttribute("login", new RegistrationForm());
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String getForm(@Valid @ModelAttribute("login") RegistrationForm consultantInfo, BindingResult result, Model model) {
        String username = consultantInfo.getUsername();
        String password = consultantInfo.getPassword();

        if (username != null && password != null) {
            try {
                ConsultantInfo c = consultantInfoService.getLogin(username, password);
                if (c != null) {
                    return "redirect:list";
                } else {
                    String invalid = "Login credentials don't match";
                    model.addAttribute("invalid", invalid);
                    return "login";
                }
            } catch (Exception e) {
                log.info(e);
            }
        }
        return "login";
    }

    @RequestMapping(value = "/logout")
    public String logOut() {
        return "logout";
    }
}
