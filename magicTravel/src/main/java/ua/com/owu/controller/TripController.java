package ua.com.owu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.com.owu.entity.Trip;
import ua.com.owu.service.TripService;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by serhii on 16.11.17.
 */
@Controller
public class TripController {
    @Autowired
    TripService tripService;

    public TripService getTripService() {
        return tripService;
    }

    public void setTripService(TripService tripService) {
        this.tripService = tripService;
    }

    @PostMapping("saveTrip")
    public String saveTrip(@RequestParam String tripname, @RequestParam String townName, @RequestParam Date date, @RequestParam int amount){
        Trip trip = new Trip(tripname, townName, date, amount);
        tripService.save(trip);
        return "admin";
    }

    @PostMapping("admin/removeTrip")
    public String removeTrip(@RequestParam int id){
        Trip byId = tripService.findOne(id);
        tripService.remove(byId);
        return "admin";
    }
//    @GetMapping("trip-{id}")
//    public String show(Model model, @PathVariable int id){
//        Trip one = tripService.findOne(id);
//        model.addAttribute("sTrip", one);
//        model.addAttribute("trip1", tripService);
//        return "trip";
//    }


    @PostMapping("findAllTrips")
    public String findAllTrips(Model model){
        List<Trip> trips = tripService.findAll();
        List<Integer> tI = new ArrayList<Integer>();
        for(Trip trip1 : trips){
            int hz = trip1.getId();
            tI.add(hz);
        }
        model.addAttribute("findAllTrips", trips);
        model.addAttribute("tI", tI);
        return "ordering";
    }
}
