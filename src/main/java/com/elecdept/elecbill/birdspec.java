package com.elecdept.elecbill;

import com.sun.istack.NotNull;

import javax.persistence.*;


@Entity
public class birdspec {
    @Id@NotNull
    private String name;
    @NotNull
    private String size;
    @NotNull
    private String color;
    @NotNull
    private String weight;

    @Override
    public String toString() {
        return "birdspec{" +
                "name='" + name + '\'' +
                ", size='" + size + '\'' +
                ", color='" + color + '\'' +
                ", weight='" + weight + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }
}
