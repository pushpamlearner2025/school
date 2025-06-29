package net.javaguides.school.client;

import java.util.List;

//import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import net.javaguides.school.entity.Student;

/*@FeignClient(value = "student-service", url = "${application.config.students-url}")
public interface StudentClient {
	@GetMapping("/school/{school-id}")
    List<Student> findAllStudentsBySchool(@PathVariable("school-id") Integer schoolId);
}*/
