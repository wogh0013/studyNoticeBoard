package com.spring.boot.controller;

import com.spring.boot.service.StudyService;
import com.spring.boot.vo.Vo_study;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/study_reg")
@Slf4j
public class StudyRegCon {

    @Autowired
    StudyService studyService;

    //입력
    @GetMapping("/insert")
    public String doInsert(){
        return "/study/study_ins";
    }

    @PostMapping("insert_exe")
    public String doInsertExe(@ModelAttribute Vo_study vo_study) {
        int exe = studyService.doStudyInsert(vo_study);

        return "redirect:/home/study_reg";
    }

    //수정
    @GetMapping("/modify")
    public String doModify(HttpServletRequest request){
        String strKeyId = request.getParameter("key_id");
        Vo_study vo_study = new Vo_study();
        vo_study = studyService.doStudyListOne(strKeyId);

        request.setAttribute("vo_study", vo_study);

        return "/study/study_mod";
    }

    //수정 update 컨트롤러
    @PostMapping("/modify_exe")
    public String doModifyExe(@ModelAttribute Vo_study vo_study){
        int exe = studyService.doStudyUpdate(vo_study);

        return "redirect:/home/study_reg";
    }

    //삭제
    @GetMapping("/delete")
    public String doDelete(@RequestParam(value = "key_id", defaultValue = "--")String strKeyId){
        int del = studyService.doStudyDelete(strKeyId);
        log.info("del="+del);

        return "redirect:/home/study_reg";
    }

}
