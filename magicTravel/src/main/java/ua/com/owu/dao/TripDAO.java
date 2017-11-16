package ua.com.owu.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.owu.entity.Trip;

/**
 * Created by serhii on 16.11.17.
 */
public interface TripDAO extends JpaRepository<Trip, Integer> {
    @Query("from Trip t where t.tripname=:tripname")
    Trip findByName(@Param("tripname") String tripname);
//
}
