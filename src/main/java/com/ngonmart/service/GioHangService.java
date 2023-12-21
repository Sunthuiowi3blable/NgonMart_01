package com.ngonmart.service;

import com.ngonmart.entities.GioHang;
import com.ngonmart.entities.NguoiDung;

public interface GioHangService {
	
	GioHang getGioHangByNguoiDung(NguoiDung n);
	
	GioHang save(GioHang g);
}
