package com.project.December.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.project.December.Model.Experiance;

@Repository
public interface Exprepo  extends JpaRepository<Experiance, Integer> {


}
