package com.example.covidservices.controller;

import com.example.covidservices.bean.CovidStateStatics;
import com.example.covidservices.bean.CovidStateSummary;
import com.example.covidservices.bean.CovidSummary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import static com.example.covidservices.utils.Constants.STATE;

@RestController
@RequestMapping("/api")
public class MainController {

    @Autowired
    RestTemplate restTemplate;

    @Value("${covid.summary}")
    String overallSummaryUrl;

    @Value("${covid.state.summary}")
    String statewiseSummaryUrl;

    @GetMapping("/covidSummary")
    public ResponseEntity<CovidSummary> getCovidSummary() {
        CovidSummary covidSummary = restTemplate.getForObject(overallSummaryUrl, CovidSummary.class);
        HttpHeaders headers = new HttpHeaders();
        headers.setAccessControlAllowOrigin("*");
        return new ResponseEntity<>(covidSummary, headers, HttpStatus.OK);
    }

    @GetMapping("/covidStateSummary")
    public CovidStateStatics getCovidStateSummary() {

        List<CovidStateSummary> covidStateSummaries = getStateSummary();
        CovidStateStatics covidStateStatics = new CovidStateStatics();
        covidStateStatics.setCovidStateSummaries(covidStateSummaries);
        return covidStateStatics;
    }

    @GetMapping("/covidStateSummary/{state}")
    public ResponseEntity<CovidStateSummary> getCovidStateWiseSummary(@PathVariable("state") String stateName) {

        List<CovidStateSummary> covidStateSummaries = getStateSummary();
        Optional<CovidStateSummary> stateSummary = covidStateSummaries.stream().filter(each -> each.getName().equalsIgnoreCase(stateName)).findAny();
        CovidStateSummary covidStateSummary = stateSummary.isPresent() ? stateSummary.get(): null;
        HttpHeaders headers = new HttpHeaders();
        headers.setAccessControlAllowOrigin("*");
        return new ResponseEntity<>(covidStateSummary, headers, HttpStatus.OK);
    }

    private List<CovidStateSummary> getStateSummary() {
        Map<String, List<CovidStateSummary>> map = restTemplate.getForObject(statewiseSummaryUrl, Map.class);
        return map.get(STATE);
    }
}
