package com.online.booking.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.online.booking.entities.Blog;
import com.online.booking.entities.Panel;
import com.online.booking.entities.Sale;



@Repository("blogRepository")
public interface BlogRepository extends  CrudRepository<Blog,Integer>{
	@Query(value="from Blog where status = :status order by id desc")
	public List<Blog> searchBlogByStatus(@Param("status") boolean status);

	@Query(value="select * from Blog where status = :status order by id desc limit :n ", nativeQuery = true)
	public List<Blog> searchLimitBlog(@Param("status") boolean status, @Param("n") int n);
}
