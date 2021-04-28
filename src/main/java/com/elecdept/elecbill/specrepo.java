package com.elecdept.elecbill;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface specrepo extends CrudRepository<birdspec,String> {

}
/*@Query("SELECT u FROM User u WHERE u.status = ?1")
    User findUserByStatus(Integer status);

    @Query("SELECT u FROM User u WHERE u.status = ?1 and u.name = ?2")
    User findUserByStatusAndName(Integer status, String name);
*/