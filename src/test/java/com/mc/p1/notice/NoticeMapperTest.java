package com.mc.p1.notice;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;



@SpringBootTest
class NoticeMapperTest {
	@Autowired
	private NoticeMapper noticeMapper;
	
	
	@Test
	public void setInsertTest()throws Exception{
		for(int i=1; i<=100;i++) {
			NoticeVO noticeVO = new NoticeVO();
			noticeVO.setTitle("Title"+i);
			noticeVO.setWriter("admin1");
			noticeVO.setContents("Contents"+i);
			
			
			int result=noticeMapper.setInsert(noticeVO);
			if(i%10==0) {
				Thread.sleep(1000);
			}
		}
	}

}
