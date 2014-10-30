package com.ttg.mvc.dao;

import com.ttg.mvc.beans.ConsultantSales;
import java.util.List;

public interface ConsultantSalesDao {

    public void saveConsultantSales(ConsultantSales consultantSales) throws Exception;

    public void updateConsultantSales(ConsultantSales consultantSales) throws Exception;

    public ConsultantSales getConsultantSales(int userId) throws Exception;

    public List<ConsultantSales> getConsultantSaleses(int userId) throws Exception;

    public List<ConsultantSales> listConsultantSales() throws Exception;
}
