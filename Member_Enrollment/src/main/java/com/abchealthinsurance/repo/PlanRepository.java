package com.abchealthinsurance.repo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.abchealthinsurance.dao.Plan;

public interface PlanRepository extends CrudRepository<Plan, Long> {
	
	@Query("from Plan where state=:state")
	List<Plan> findPlan(@Param("state") String state);
}
