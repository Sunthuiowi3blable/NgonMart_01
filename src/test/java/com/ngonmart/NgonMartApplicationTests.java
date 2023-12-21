package com.ngonmart;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.ngonmart.entities.DanhMuc;
import com.ngonmart.entities.DonHang;
import com.ngonmart.entities.NguoiDung;
import com.ngonmart.entities.VaiTro;
import com.ngonmart.repository.DonHangRepository;
import com.ngonmart.repository.NguoiDungRepository;
import com.ngonmart.service.DanhMucService;
import com.ngonmart.service.NguoiDungService;
import com.ngonmart.service.SanPhamService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class NgonMartApplicationTests {

	@Autowired
	private DanhMucService dmService;

	@Autowired
	private NguoiDungService nguoiDungService;

	@Autowired
	private NguoiDungRepository ndRepo;

	@Autowired
	private DonHangRepository dhRepo;
	
	@Autowired
	private SanPhamService spService;


//	@Test
//	public void getALlDanhMucTest() {
//		System.out.println(dhRepo.test().size());
//	}

	@Test
	public void getALlDanhMucTest() {
		System.out.println(spService.getSanPhamByTenSanPhamForAdmin("asus",0,10).getContent().size());
	}

}
