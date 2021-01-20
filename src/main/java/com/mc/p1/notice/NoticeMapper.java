package com.mc.p1.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mc.p1.util.NoticePager;

@Mapper
public interface NoticeMapper {

	public int setInsert(NoticeVO noticeVO)throws Exception;
	
	public List<NoticeVO> getList(NoticePager noticePager)throws Exception;
	
	public long getCount(NoticePager noticePager)throws Exception;
}
