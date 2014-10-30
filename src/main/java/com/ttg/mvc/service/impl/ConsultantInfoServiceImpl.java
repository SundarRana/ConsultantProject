package com.ttg.mvc.service.impl;

import com.ttg.mvc.beans.ConsultantInfo;
import com.ttg.mvc.dao.ConsultantInfoDao;
import com.ttg.mvc.service.ConsultantInfoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ConsultantInfoServiceImpl implements ConsultantInfoService {

    @Autowired
    private ConsultantInfoDao consultantInfoDao;

    @Override
    @Transactional
    public void saveConsultant(ConsultantInfo consultantInfo) throws Exception {
        consultantInfoDao.saveConsultant(consultantInfo);
    }

    @Override
    @Transactional
    public void updateConsultant(ConsultantInfo consultantInfo) throws Exception {
        consultantInfoDao.updateConsultant(consultantInfo);
    }

    @Override
    @Transactional(readOnly = true)
    public ConsultantInfo getConsultant(int userId) throws Exception {
        return consultantInfoDao.getConsultant(userId);
    }

    @Override
    @Transactional(readOnly = true)
    public List<ConsultantInfo> listConsultants() throws Exception {
        return consultantInfoDao.listConsultants();
    }

    @Override
    public ConsultantInfo getLogin(String username, String password) throws Exception {
        return consultantInfoDao.getLoginUser(username, password);
    }

}
