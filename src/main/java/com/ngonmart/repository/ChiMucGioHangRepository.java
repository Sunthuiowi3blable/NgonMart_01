package com.ngonmart.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ngonmart.entities.ChiMucGioHang;
import com.ngonmart.entities.GioHang;
import com.ngonmart.entities.SanPham;

public interface ChiMucGioHangRepository extends JpaRepository<ChiMucGioHang, Long>{
	
	ChiMucGioHang findBySanPhamAndGioHang(SanPham sp,GioHang g);
	
	List<ChiMucGioHang> findByGioHang(GioHang g);
}
