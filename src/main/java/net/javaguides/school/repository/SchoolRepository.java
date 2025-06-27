package net.javaguides.school.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import net.javaguides.school.entity.School;

@Repository
public interface SchoolRepository extends JpaRepository<School, Integer>{

}
