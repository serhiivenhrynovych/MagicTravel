package ua.com.owu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.sql.Date;

@Entity
public class Trip {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String tripname;
    private String townName;
    private Date date;
    private int amount;

    public Trip() {
    }

    public Trip(String tripname, String townName) {
        this.tripname = tripname;
        this.townName = townName;
    }

    public Trip(String tripname, String townName, int amount) {
        this.tripname = tripname;
        this.townName = townName;
        this.amount = amount;
    }

    public Trip(String tripname, String townName, Date date, int amount) {
        this.tripname = tripname;
        this.townName = townName;
        this.date = date;
        this.amount = amount;
    }

    @Override
    public String toString() {
        return "Trip{" +
                "id=" + id +
                ", tripname='" + tripname + '\'' +
                ", townName='" + townName + '\'' +
                ", date=" + date +
                ", amount=" + amount +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTripname() {
        return tripname;
    }

    public void setTripname(String tripname) {
        this.tripname = tripname;
    }

    public String getTownName() {
        return townName;
    }

    public void setTownName(String townName) {
        this.townName = townName;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
