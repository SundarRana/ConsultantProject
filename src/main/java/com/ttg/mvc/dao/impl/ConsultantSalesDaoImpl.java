package com.ttg.mvc.dao.impl;

import com.ttg.mvc.beans.ConsultantSales;
import com.ttg.mvc.dao.ConsultantSalesDao;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import org.springframework.stereotype.Repository;

@Repository
public class ConsultantSalesDaoImpl implements ConsultantSalesDao {

    @PersistenceContext(unitName = "consultantPU")
    private EntityManager entityManager;

    @Override
    public void saveConsultantSales(ConsultantSales consultantSales) throws Exception {
        entityManager.persist(consultantSales);
    }

    @Override
    public void updateConsultantSales(ConsultantSales consultantSales) throws Exception {
        entityManager.merge(consultantSales);
    }

    @Override
    public ConsultantSales getConsultantSales(int userId) throws Exception {
        return entityManager.find(ConsultantSales.class, userId);
    }

    @Override
    public List<ConsultantSales> listConsultantSales() throws Exception {
        TypedQuery<ConsultantSales> query = (TypedQuery<ConsultantSales>) entityManager.createQuery("SELECT s FROM ConsultantSales s");
        return query.getResultList();
    }

    @Override
    public List<ConsultantSales> getConsultantSaleses(int userId) throws Exception {
        TypedQuery<ConsultantSales> query = entityManager.createQuery("SELECT s FROM ConsultantSales s WHERE s.userId.userId = :userId", ConsultantSales.class);
        query.setParameter("userId", userId);
        return query.getResultList();
    }

}
