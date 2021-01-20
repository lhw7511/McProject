package com.mc.p1.notice;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mc.p1.util.FileManager;
import com.mc.p1.util.FilePathGenerator;
import com.mc.p1.util.NoticePager;

@Service
public class NoticeService {

	@Autowired
	private NoticeMapper noticeMapper;
	
	@Autowired
	private FilePathGenerator filePathGenerator;
	@Autowired
	private FileManager fileManager;
	
	@Value("${notice.summerNoteInsert.filePath}")
	private String filePath;
	
	
	public String setSummerNoteInsert(MultipartFile file) throws Exception {
		 File dest= filePathGenerator.getUseResourceLoader(filePath);
		 String fileName=fileManager.saveFileCopy(file, dest);
		 return fileName;
	}
	
	public Boolean setSummerNoteDelete(String file)throws Exception{
		return filePathGenerator.setDeleteFile(file, filePath);
	}
	
	public int setInsert(NoticeVO noticeVO)throws Exception{
		return noticeMapper.setInsert(noticeVO);
	}
	
	public List<NoticeVO> getList(NoticePager noticePager)throws Exception{
		noticePager.makeRow();
		noticePager.setTotalCount(noticeMapper.getCount(noticePager));
		noticePager.makePage();
		return noticeMapper.getList(noticePager);
	}
}
