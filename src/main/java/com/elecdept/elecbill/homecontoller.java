package com.elecdept.elecbill;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@Controller
public class homecontoller {
    @Autowired
    specrepo specrep;
    @Autowired
    sightrepo sightrep;
    @RequestMapping("/")
    public String home(){
        return "1st";
    }
    @RequestMapping("/add1")
    public String add1(birdspec da){
        specrep.save(da);
        return "redirect:/getspec";
    }
    @RequestMapping("/add2")
    public String add2(birdsight da){
        sightrep.save(da);
        return "redirect:/getsight";
    }
    @RequestMapping("getspec")
    @ResponseBody
    public ModelAndView getspec(){
        List<birdspec> lst=(List<birdspec>)specrep.findAll();
        ModelAndView mv=new ModelAndView("birdspec");
        mv.addObject("lists",lst);
        return mv;
    }
    @RequestMapping("getsight")
    @ResponseBody
    public ModelAndView getsight(){
        List<birdsight> lst=(List<birdsight>)sightrep.findAll();
        ModelAndView mv=new ModelAndView("birdsight");
        mv.addObject("lists",lst);
        return mv;
    }
    @RequestMapping("delspec")
    public String deletespec(@RequestParam String idd){
        System.out.print(idd);
        //int id=Integer.parseInt(idd);
        //birdspec da=specrep.findById(idd).orElse(new birdspec());
        specrep.deleteById(idd);
        return "redirect:/getspec";
    }
    @RequestMapping("delsight")
    public String deletesight(@RequestParam String idd){
        System.out.print(idd);
        //int id=Integer.parseInt(idd);
        //birdspec da=specrep.findById(idd).orElse(new birdspec());
        sightrep.deleteById(idd);
        return "redirect:/getsight";
    }
}
