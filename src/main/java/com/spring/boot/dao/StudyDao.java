package com.spring.boot.dao;

import com.spring.boot.vo.Vo_study;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface StudyDao {

    public List<Vo_study> doStudyList();

    public Vo_study doStudyListOne(String strKeyId);

    public int doStudyInsert(Vo_study vo_study);

    public int doStudyUpdate(Vo_study vo_study);

    public int doStudyDelete(String strKeyId);
}
