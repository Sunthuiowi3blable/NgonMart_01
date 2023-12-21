package com.ngonmart.service;

import java.util.List;

import com.ngonmart.entities.ChiMucGioHang;
import com.ngonmart.entities.GioHang;
import com.ngonmart.entities.SanPham;

public interface ChiMucGioHangService{
	
	List<ChiMucGioHang> getChiMucGioHangByGioHang(GioHang g);
	
	ChiMucGioHang getChiMucGioHangBySanPhamAndGioHang(SanPham sp,GioHang g);
	
	ChiMucGioHang saveChiMucGiohang(ChiMucGioHang c);
	
	void deleteChiMucGiohang(ChiMucGioHang c);
	
	void deleteAllChiMucGiohang(List<ChiMucGioHang> c);
	
}
