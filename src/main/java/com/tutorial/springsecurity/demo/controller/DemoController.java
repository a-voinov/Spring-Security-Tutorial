package com.tutorial.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

    @GetMapping("/")
    public String home(){
        return "home";
    }

    @GetMapping("/leaders")
    public String managerPage(){
        return "leaders";
    }

    @GetMapping("/systems")
    public String adminPage(){
        return "systems";
    }

}
