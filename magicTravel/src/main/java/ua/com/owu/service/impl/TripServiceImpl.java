package ua.com.owu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.owu.dao.TripDAO;
import ua.com.owu.entity.Trip;
import ua.com.owu.service.TripService;

import java.util.List;

/**
 * Created by serhii on 16.11.17.
 */
@Service
public class TripServiceImpl implements TripService{
    @Autowired
    private TripDAO tripDAO;
    public void save(Trip trip) {
        tripDAO.save(trip);
    }


    public Trip findByName(String tripname) {
        return tripDAO.findByName(tripname);
    }

    public List<Trip> findAll() {
        return tripDAO.findAll();
    }

    public Trip findOne(int id){
        return tripDAO.findOne(id);
    }

    public void remove(Trip trip){
        tripDAO.delete(trip);
    }

}
