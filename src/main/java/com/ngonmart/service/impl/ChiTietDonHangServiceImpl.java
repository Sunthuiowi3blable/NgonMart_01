package com.ngonmart.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ngonmart.entities.ChiTietDonHang;
import com.ngonmart.repository.ChiMucGioHangRepository;
import com.ngonmart.repository.ChiTietDonHangRepository;
import com.ngonmart.service.ChiTietDonHangService;

@Service
public class ChiTietDonHangServiceImpl implements ChiTietDonHangService{
	
	@Autowired
	private ChiTietDonHangRepository repo;
	
	@Override
	public List<ChiTietDonHang> save(List<ChiTietDonHang> list)
	{	
		return repo.saveAll(list);
	}
}
