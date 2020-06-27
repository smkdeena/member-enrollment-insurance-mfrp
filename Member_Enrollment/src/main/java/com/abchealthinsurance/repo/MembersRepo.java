package com.abchealthinsurance.repo;

import org.springframework.data.repository.CrudRepository;

import com.abchealthinsurance.dao.Members;

public interface MembersRepo extends CrudRepository<Members, Long> {

}
