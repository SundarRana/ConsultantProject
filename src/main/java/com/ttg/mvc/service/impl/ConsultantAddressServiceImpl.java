package com.ttg.mvc.service.impl;

import com.ttg.mvc.beans.ConsultantAddress;
import com.ttg.mvc.dao.ConsultantAddressDao;
import com.ttg.mvc.service.ConsultantAddressService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ConsultantAddressServiceImpl implements ConsultantAddressService {

    @Autowired
    private ConsultantAddressDao consultantAddressDao;

    @Override
    @Transactional
    public void saveAddress(ConsultantAddress consultantAddress) throws Exception {
        consultantAddressDao.saveAddress(consultantAddress);
    }

    @Override
    @Transactional
    public void updateAddress(ConsultantAddress consultantAddress) throws Exception {
        consultantAddressDao.updateAddress(consultantAddress);
    }

    @Override
    @Transactional(readOnly = true)
    public ConsultantAddress getAddress(int userId) throws Exception {
        return consultantAddressDao.getAddress(userId);
    }

    @Override
    @Transactional(readOnly = true)
    public List<ConsultantAddress> listAddress() throws Exception {
        return consultantAddressDao.listAddress();
    }

}
