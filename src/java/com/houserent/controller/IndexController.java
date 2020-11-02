package com.houserent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
 
    @RequestMapping("/{pagename}")
    public String ToPage(@PathVariable("pagename") String jspName ) {
           return jspName ;
    } 
    
    

}
