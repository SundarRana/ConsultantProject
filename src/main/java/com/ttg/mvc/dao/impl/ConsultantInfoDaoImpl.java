package com.ttg.mvc.dao.impl;

import com.ttg.mvc.beans.ConsultantInfo;
import com.ttg.mvc.dao.ConsultantInfoDao;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import org.springframework.stereotype.Repository;

@Repository
public class ConsultantInfoDaoImpl implements ConsultantInfoDao {

    @PersistenceContext(unitName = "consultantPU")
    private EntityManager entityManager;

    @Override
    public void saveConsultant(ConsultantInfo consultantInfo) throws Exception {
        entityManager.persist(consultantInfo);
    }

    @Override
    public void updateConsultant(ConsultantInfo consultantInfo) throws Exception {
        entityManager.merge(consultantInfo);
    }

    @Override
    public ConsultantInfo getConsultant(int userId) throws Exception {
        return entityManager.find(ConsultantInfo.class, userId);
    }

    @Override
    public List<ConsultantInfo> listConsultants() throws Exception {
        TypedQuery<ConsultantInfo> query = (TypedQuery<ConsultantInfo>) entityManager.createQuery("SELECT i FROM ConsultantInfo i");
        return query.getResultList();
    }

    @Override
    public ConsultantInfo getLoginUser(String username, String password) {
        TypedQuery<ConsultantInfo> query = entityManager.createQuery("SELECT c FROM ConsultantInfo c where c.username =:username AND c.password = :password", ConsultantInfo.class);
        query.setParameter("username", username);
        query.setParameter("password", password);
        return query.getSingleResult();
    }

}
