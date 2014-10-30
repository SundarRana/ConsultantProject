package com.ttg.mvc.controllers;

import com.ttg.mvc.beans.ConsultantInfo;
import com.ttg.mvc.beans.ConsultantSales;
import com.ttg.mvc.beans.SalesForm;
import com.ttg.mvc.service.ConsultantInfoService;
import com.ttg.mvc.service.ConsultantSalesService;
import java.util.ArrayList;
import java.util.List;
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
public class SalesController {

    private static final Logger log = Logger.getLogger(SalesController.class);

    @Autowired
    private ConsultantSalesService css;
    @Autowired
    private ConsultantInfoService cis;

    @RequestMapping(value = "/salesform", method = RequestMethod.GET)
    public String displayForm(@RequestParam("userId") int userId, Model model) {
        SalesForm sales = new SalesForm();
        sales.setUserId(userId);
        model.addAttribute("sales", sales);
        return "salesForm";
    }

    @RequestMapping(value = "/salesForm", method = RequestMethod.POST)
    public String getForm(@Valid @ModelAttribute("sales") SalesForm sales, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "salesForm";
        }
        try {
            System.out.println("*********************************************************************************************************");
            System.out.println("The user Id recieved from the form is: " + sales.getUserId());
            ConsultantInfo ci = cis.getConsultant(sales.getUserId());
            if (ci != null && ci.getUserId() != 0) {
                ConsultantSales cs = new ConsultantSales();
                cs.setUserId(ci);
                cs.setAmount(sales.getAmount());
                cs.setProducts(sales.getProducts());
                cs.setOrders(sales.getOrders());
                cs.setCustomers(sales.getCustomers());
                css.saveConsultantSales(cs);
                return "redirect:list";
            }
            model.addAttribute("error", "Error while Saving. Please try again.");
            return "salesForm";
        } catch (Exception e) {
            log.info(e);
            model.addAttribute("error", "Error while Saving. Please try again.");
            return "saleFrom";
        }
    }

    @RequestMapping("/viewsales")
    private String viewSales(@RequestParam("userId") int userId, Model model) {
        List<ConsultantSales> list = new ArrayList<>();
        try {
            list = css.getConsultantSaleses(userId);
            if(css==null){
                String none="Doesn't have any sales.";
                model.addAttribute("none", none);
                return "viewSales";
            }
        } catch (Exception e) {
            log.info(e);
        }
        model.addAttribute("list", list);
        return "viewSales";
    }

    @RequestMapping("/listsales")
    private String viewSalesList(Model model) {
        List<ConsultantSales> list = new ArrayList<>();
        try {
            list = css.listConsultantSales();
        } catch (Exception e) {
            log.info(e);
        }
        model.addAttribute("list", list);
        return "viewSales";
    }
}
