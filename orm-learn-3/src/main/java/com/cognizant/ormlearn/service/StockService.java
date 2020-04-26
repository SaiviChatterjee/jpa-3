package com.cognizant.ormlearn.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.ormlearn.model.Stock;
import com.cognizant.ormlearn.repository.StockRepository;

@Service
public class StockService {
	@Autowired
	private StockRepository stockRepositary;
	public List<Stock> findByCodeAndDateBetween(String code, Date date1, Date date2){
		return stockRepositary.findByCodeAndDateBetween(code, date1, date2);
	}
	public List<Stock> findTop3ByCodeOrderByCloseAsc(String code){
		return stockRepositary.findTop3ByCodeOrderByCloseAsc(code);
	}
	public List<Stock> findTop3ByCodeOrderByVolumeDesc(String code) {
		return stockRepositary.findTop3ByCodeOrderByVolumeDesc(code);
	}
}
