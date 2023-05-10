package com.swapnilxi.javajenkins.controllers;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
 @GetMapping("/")
    public String getHome(){
        return " this is home";
    }
@GetMapping("/docker")
public String dockerHome(){
    return "this is docker home";
}
    
}
