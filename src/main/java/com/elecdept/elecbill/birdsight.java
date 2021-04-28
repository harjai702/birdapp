package com.elecdept.elecbill;

import com.sun.istack.NotNull;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import java.util.Date;

@Entity
public class birdsight {
    @Id@NotNull
    private String birdspec;
    @NotNull
    private String date;
    @NotNull
    private String location;

    @Override
    public String toString() {
        return "birdsight{" +
                "birdspec='" + birdspec + '\'' +
                ", date=" + date +
                ", location='" + location + '\'' +
                '}';
    }

    public String getBirdspec() {
        return birdspec;
    }

    public void setBirdspec(String birdspec) {
        this.birdspec = birdspec;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}
