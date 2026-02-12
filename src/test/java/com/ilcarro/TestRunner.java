package com.ilcarro;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;


@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/resources/features",
        glue = "com/ilcarro/stepDefinitions",
        tags = "@navigate",
        plugin = {"pretty", "json:build/cucumber-report/cucumber.java"})


public class TestRunner {
}
