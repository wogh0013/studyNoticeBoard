package com.spring.boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class Login {

    @GetMapping("/sign_in")
    public String doSign_in(){
        return "/login/sign_in";
    }

    @GetMapping("")
    public String doLogin(){
        return "/login/login";
    }
}
