package com.ttg.mvc.service.impl;

import com.ttg.mvc.beans.ConsultantSales;
import com.ttg.mvc.dao.ConsultantSalesDao;
import com.ttg.mvc.service.ConsultantSalesService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ConsultantSalesServiceImpl implements ConsultantSalesService {

    @Autowired
    private ConsultantSalesDao consultantSalesDao;

    @Override
    @Transactional
    public void saveConsultantSales(ConsultantSales consultantSales) throws Exception {
        consultantSalesDao.saveConsultantSales(consultantSales);
    }

    @Override
    @Transactional
    public void updateConsultantSales(ConsultantSales consultantSales) throws Exception {
        consultantSalesDao.updateConsultantSales(consultantSales);
    }

    @Override
    @Transactional(readOnly = true)
    public ConsultantSales getConsultantSales(int userId) throws Exception {
        return consultantSalesDao.getConsultantSales(userId);
    }

    @Override
    @Transactional(readOnly = true)
    public List<ConsultantSales> listConsultantSales() throws Exception {
        return consultantSalesDao.listConsultantSales();
    }

    @Override
    public List<ConsultantSales> getConsultantSaleses(int userId) throws Exception {
        return consultantSalesDao.getConsultantSaleses(userId);
    }

}
