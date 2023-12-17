package com.spring.boot.controller;

import com.spring.boot.service.StudyService;
import com.spring.boot.vo.Vo_study;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/home")
@Slf4j
public class Home {

    @Autowired
    StudyService studyService;

    @GetMapping("")
    public String doHome(){
        return "/home/home";
    }

    @GetMapping("/study_reg")
    public String doStudy_reg(HttpServletRequest request, Model model){

        List<Vo_study> list = new ArrayList<>();
        list = studyService.doStudyList();

        log.info("vo_study");
        for(Vo_study vo_study : list){
            log.info("번호 : " + vo_study.getKeyId());
            log.info("공부일자 : " + vo_study.getStudyDay());
            log.info("공부내용 : " + vo_study.getContents());
            log.info("등록일자 : " + vo_study.getRegDay());
        }
        model.addAttribute("list", list);

        return "/home/study_reg";
    }

    @GetMapping("/member_list")
    public String doMember_list(){
        return "/home/member_list";
    }

}
