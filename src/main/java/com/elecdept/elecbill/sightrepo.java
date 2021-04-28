package com.elecdept.elecbill;

import com.elecdept.elecbill.birdsight;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface sightrepo extends CrudRepository<birdsight,String> {

}