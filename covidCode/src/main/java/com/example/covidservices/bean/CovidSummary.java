package com.example.covidservices.bean;

import com.fasterxml.jackson.annotation.JsonAlias;

public class CovidSummary {

    @JsonAlias({"Active cases"})
    private int activeCases;
    @JsonAlias({"Cured/Discharged/Migrated"})
    private int curedCases;
    @JsonAlias({"Death"})
    private int deathCases;
    @JsonAlias({"Total Cases"})
    private int totalCases;

    public int getActiveCases() {
        return activeCases;
    }

    public void setActiveCases(int activeCases) {
        this.activeCases = activeCases;
    }

    public int getCuredCases() {
        return curedCases;
    }

    public void setCuredCases(int curedCases) {
        this.curedCases = curedCases;
    }

    public int getDeathCases() {
        return deathCases;
    }

    public void setDeathCases(int deathCases) {
        this.deathCases = deathCases;
    }

    public int getTotalCases() {
        return totalCases;
    }

    public void setTotalCases(int totalCases) {
        this.totalCases = totalCases;
    }
}
