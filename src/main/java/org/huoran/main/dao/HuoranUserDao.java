package org.huoran.main.dao;

import org.huoran.main.entity.HuoranUser;

public interface HuoranUserDao {
    int deleteByPrimaryKey(String userid);

    int insert(HuoranUser record);

    int insertSelective(HuoranUser record);

    HuoranUser selectByPrimaryKey(String userid);

    int updateByPrimaryKeySelective(HuoranUser record);

    int updateByPrimaryKey(HuoranUser record);
}