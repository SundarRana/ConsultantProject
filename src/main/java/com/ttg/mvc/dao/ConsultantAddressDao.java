package com.ttg.mvc.dao;

import com.ttg.mvc.beans.ConsultantAddress;
import java.util.List;

public interface ConsultantAddressDao {

    public void saveAddress(ConsultantAddress consultantAddress) throws Exception;

    public void updateAddress(ConsultantAddress consultantAddress) throws Exception;

    public ConsultantAddress getAddress(int userId) throws Exception;

    public List<ConsultantAddress> listAddress() throws Exception;
}
