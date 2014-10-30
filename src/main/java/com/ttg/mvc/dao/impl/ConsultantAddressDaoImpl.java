package com.ttg.mvc.dao.impl;

import com.ttg.mvc.beans.ConsultantAddress;
import com.ttg.mvc.dao.ConsultantAddressDao;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import org.springframework.stereotype.Repository;

@Repository
public class ConsultantAddressDaoImpl implements ConsultantAddressDao {

    @PersistenceContext(unitName = "consultantPU")
    private EntityManager entityManager;

    @Override
    public void saveAddress(ConsultantAddress consultantAddress) throws Exception {
        entityManager.persist(consultantAddress);
    }

    @Override
    public void updateAddress(ConsultantAddress consultantAddress) throws Exception {
        entityManager.merge(consultantAddress);
    }

    @Override
    public ConsultantAddress getAddress(int userId) throws Exception {
        TypedQuery<ConsultantAddress> query =  entityManager.createQuery("SELECT a FROM ConsultantAddress a  where a.userId.userId = :userId", ConsultantAddress.class);
        query.setParameter("userId", userId);
        return query.getSingleResult();
    }

    @Override
    public List<ConsultantAddress> listAddress() throws Exception {
        TypedQuery<ConsultantAddress> query = (TypedQuery<ConsultantAddress>) entityManager.createQuery("SELECT a FROM ConsultantAddress a");
        return query.getResultList();
    }

}
