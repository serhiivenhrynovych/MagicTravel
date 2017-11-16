package ua.com.owu.service;

import ua.com.owu.entity.Trip;

import java.util.List;

/**
 * Created by serhii on 16.11.17.
 */
public interface TripService {

    void save(Trip trip);

    Trip findByName(String tripname);

    Trip findOne(int id);

    void remove(Trip trip);

    List<Trip> findAll();

}
