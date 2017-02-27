package com.hpe.my.module.dao;

import com.hpe.my.model.entiy.UserInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by BaiRu on 2016/12/27.
 */
@Repository
public interface UserInfoDao {

 // UserInfo queryInfo(int id);

  /**
   * 查找所有用户
   */
  List<UserInfo>  findAllUser();
}
