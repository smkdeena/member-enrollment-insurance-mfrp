package com.abchealthinsurance.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abchealthinsurance.dao.HospitalModel;


@Repository
public interface ProviderRepository extends JpaRepository<HospitalModel, Long>{
	
	@Query("from HospitalModel where pincode=:pincode")
	List<HospitalModel> findProvider(@Param("pincode") String pincode);
}

