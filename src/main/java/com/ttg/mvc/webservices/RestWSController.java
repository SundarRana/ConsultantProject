package com.ttg.mvc.webservices;

import com.ttg.mvc.beans.ConsultantInfo;
import com.ttg.mvc.service.ConsultantInfoService;
import java.util.List;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

//Rest
@Controller
@RequestMapping("/user")
public class RestWSController {

    @Autowired
    private ConsultantInfoService cis;

    private static final Logger log = Logger.getLogger(RestWSController.class);

    @RequestMapping(value = "/listjson", method = RequestMethod.GET)
    public @ResponseBody
    List<ConsultantInfo> getListConsultant() {
        List<ConsultantInfo> list = null;
        try {
            log.debug("Getting list from consultant info");
            list = cis.listConsultants();
            log.debug(list);
        } catch (Exception ex) {
            log.info("Error:::", ex);
        }
        return list;
    }

    @RequestMapping(value = "/listxml", method = RequestMethod.GET, produces = "application/xml")
    private @ResponseBody List<ConsultantInfo> listXML() {
        List<ConsultantInfo> list = null;
        try {
            log.debug("Getting list from consultant info");
            list = cis.listConsultants();
            log.debug(list);
        } catch (Exception ex) {
            log.info("Error:::", ex);
        }
        return list;
    }
}
