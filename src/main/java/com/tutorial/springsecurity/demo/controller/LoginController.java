package com.tutorial.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @GetMapping("/showMyLoginPageForm")
    public String show(){
        return "fancy-login";
    }

    @GetMapping("/access-denied")
    public String accessDeniedPage() {return "access-denied"; }

}
