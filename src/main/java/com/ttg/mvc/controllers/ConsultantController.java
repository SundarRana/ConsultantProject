package com.ttg.mvc.controllers;

import com.ttg.mvc.beans.ConsultantAddress;
import com.ttg.mvc.beans.ConsultantInfo;
import com.ttg.mvc.beans.RegistrationForm;
import com.ttg.mvc.service.ConsultantAddressService;
import com.ttg.mvc.service.ConsultantInfoService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ConsultantController {

    @Autowired
    private ConsultantInfoService consultantInfoService;
    @Autowired
    private ConsultantAddressService addressService;

    private static final Logger log = Logger.getLogger(ConsultantController.class);

    @RequestMapping(value = {"/home", "/index.htm"})
    public String mainPage() {
        return "home";
    }

    @RequestMapping("/list")
    public String listConsultants(Model model) {
        List<ConsultantInfo> list = null;
        try {
            log.debug("Getting list of consultants from Service class to Controller");
            list = consultantInfoService.listConsultants();
        } catch (Exception e) {
            log.info("Error occured", e);
        }
        model.addAttribute("list", list);
        return "list";
    }

    @RequestMapping("/address")
    public String getAddress(@RequestParam int userId, Model model) {
        ConsultantAddress address = null;
        String username = "";
        try {
            address = addressService.getAddress(userId);
            username = address.getUserId().getFirstName();
        } catch (Exception ex) {
            log.info("Error", ex);
        }
        model.addAttribute("address", address);
        model.addAttribute("username", username);
        return "address";
    }

    @RequestMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("register", new RegistrationForm());
        return "registration";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String getRegistrationForm(@Valid @ModelAttribute("register") RegistrationForm form, BindingResult result, Model model) {
        try {
            if (result.hasErrors()) {
                return "registration";
            }
            System.out.println("form.toString()");

            ConsultantInfo info = new ConsultantInfo();
            info.setUsername(form.getUsername());
            info.setPassword(form.getPassword());
            info.setFirstName(form.getFirstName());
            info.setLastName(form.getLastName());
            info.setDob(form.getDob());
            info.setGender(form.getGender());
            info.setSsn(form.getSsn());
            ConsultantAddress ca = new ConsultantAddress();
            ca.setAddress1(form.getAddress1());
            ca.setAddress2(form.getAddress2());
            ca.setCity(form.getCity());
            ca.setState(form.getState());
            ca.setCountry(form.getCountry());
            ca.setZipcode(form.getZipcode());
            ca.setType(form.getType());
            ca.setUserId(info);
            List<ConsultantAddress> list = new ArrayList<>();
            list.add(ca);
            info.setConsultantAddressCollection(list);

            consultantInfoService.saveConsultant(info);

        } catch (Exception e) {
            log.info("Error while saving.", e);
        }
        return "redirect:list";
    }

    @RequestMapping("/userDetails")
    public String userDetails(@RequestParam("userId") int userId, Model model) {
        try {
            System.out.println(userId);
            ConsultantInfo ci = consultantInfoService.getConsultant(userId);
            List<ConsultantAddress> list = (List<ConsultantAddress>) ci.getConsultantAddressCollection();
            ConsultantAddress ca = new ConsultantAddress();
            if (list != null) {
                for (ConsultantAddress c : list) {
                    ca.setAddress1(c.getAddress1());
                    ca.setAddress2(c.getAddress2());
                    ca.setCity(c.getCity());
                    ca.setState(c.getState());
                    ca.setCountry(c.getCountry());
                    ca.setType(c.getType());
                    ca.setZipcode(c.getZipcode());
                }
                System.out.println(ca);
                model.addAttribute("ci", ci);
                model.addAttribute("ca", ca);
                return "userDetails";
            }

        } catch (Exception e) {
            log.info(e);
        }
        return "redirect:list";
    }

    @RequestMapping("/about")
    public String aboutPage() {
        return "about";
    }

    public String update(@RequestParam("userId") int userId, Model model, HttpServletRequest request) {

        String error = "Some error occured. Please try again later.";
        try {
            request.setAttribute("userId", userId);
            ConsultantInfo ci = consultantInfoService.getConsultant(userId);
            List<ConsultantAddress> list = null;
            ConsultantAddress ca = new ConsultantAddress();
            for (ConsultantAddress list1 : list) {
                ca = list1;
            }
            RegistrationForm form = new RegistrationForm();
//            form.setUserId(userId);
            
            form.setUsername(ci.getUsername());
            form.setPassword(ci.getPassword());
            form.setFirstName(ci.getFirstName());
            form.setLastName(ci.getLastName());
            form.setGender(ci.getGender());
            form.setDob(ci.getDob());
            form.setSsn(ci.getSsn());
            form.setAddress1(ca.getAddress1());
            form.setAddress2(ca.getAddress2());
            form.setCity(ca.getCity());
            form.setState(ca.getState());
            form.setCountry(ca.getCountry());
            form.setZipcode(ca.getZipcode());
            form.setType(ca.getType());
            model.addAttribute("register", form);
            return "registration";
        } catch (Exception e) {
            log.info(e);
            model.addAttribute("error", error);
            return "registration";
        }
    }
}
