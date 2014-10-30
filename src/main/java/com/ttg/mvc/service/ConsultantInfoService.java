package com.ttg.mvc.service;

import com.ttg.mvc.beans.ConsultantInfo;
import java.util.List;

public interface ConsultantInfoService {

    public void saveConsultant(ConsultantInfo consultantInfo) throws Exception;

    public void updateConsultant(ConsultantInfo consultantInfo) throws Exception;

    public ConsultantInfo getConsultant(int userId) throws Exception;

    public List<ConsultantInfo> listConsultants() throws Exception;

    public ConsultantInfo getLogin(String username, String password) throws Exception;
}
