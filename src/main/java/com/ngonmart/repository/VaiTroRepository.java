package com.ngonmart.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ngonmart.entities.VaiTro;

public interface VaiTroRepository extends JpaRepository<VaiTro, Long> {

	VaiTro findByTenVaiTro(String tenVaiTro);
}
