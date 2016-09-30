package com.princessworld.dao;
import java.util.List;


import com.princessworld.model.Product;

public interface DataDao {
	public int insertRow(Product product,String p);

	 public List getList();

	 public Product getRowById(int pid);

	 public int updateRow(Product product);

	 public int deleteRow(int pid);


}
