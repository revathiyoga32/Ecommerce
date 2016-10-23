package com.princessworld.dao;



import java.util.List;

import com.princessworld.bean.UserBean;



public interface UserBeanDAO {
 public int insertRow(UserBean use);

 public List getList();

 public UserBean getRowById(int id);

 public int updateRow(UserBean use);

 public int deleteRow(int id);

}