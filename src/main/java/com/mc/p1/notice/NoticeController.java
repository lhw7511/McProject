package com.mc.p1.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mc.p1.util.NoticePager;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@PostMapping("noticeUpdate")
	public ModelAndView noticeUpdate2(NoticeVO noticeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		String message="수정 실패";
		int result=noticeService.setUpdate(noticeVO);
		if(result>0) {
			message="수정 성공";
		}
		mv.addObject("msg", message);
		mv.addObject("path", "./noticeList");
		mv.setViewName("common/result");
		return mv;
	}
	
	@GetMapping("noticeUpdate")
	public ModelAndView noticeUpdate(NoticeVO noticeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		noticeVO=noticeService.getOne(noticeVO);
		mv.addObject("dto", noticeVO);
		mv.setViewName("notice/noticeUpdate");
		return mv;
		
	}
	
	@GetMapping("noticeDelete")
	public ModelAndView noticeDelete(NoticeVO noticeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		String message="삭제 실패";
		int result = noticeService.setDelete(noticeVO);
		if(result>0) {
			message="삭제 성공";
		}
		mv.addObject("msg", message);
		mv.addObject("path", "./noticeList");
		mv.setViewName("common/result");
		return mv;
	}
	
	@GetMapping("noticeSelect")
	public ModelAndView noticeSelect(NoticeVO noticeVO)throws Exception {
		ModelAndView mv = new ModelAndView();
		noticeVO=noticeService.getOne(noticeVO);
		mv.addObject("dto", noticeVO);
		mv.setViewName("notice/noticeSelect");
		return mv;
	}
	
	@GetMapping("noticeInsert")
	public void noticeInsert() {
		
	}
	
	@GetMapping("noticeList")
	public ModelAndView getList(NoticePager noticePager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<NoticeVO> noticeVOs = noticeService.getList(noticePager);
		mv.addObject("list", noticeVOs);
		mv.addObject("pager", noticePager);
		mv.setViewName("notice/noticeList");
		return mv;
	}
	
	@PostMapping("noticeInsert")
	public ModelAndView noticeInsert(NoticeVO noticeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		String message="작성 실패!";
		
		int result=noticeService.setInsert(noticeVO);
		
		if(result>0) {
			message="작성 성공!";
		}
		
		mv.addObject("msg", message);
		mv.addObject("path", "../");
		mv.setViewName("common/result");
		
		return mv;
	}
	
	@PostMapping("summernoteInsert")
	public ModelAndView setSummerNoteInsert(MultipartFile file)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		String name=noticeService.setSummerNoteInsert(file);
		mv.addObject("msg", name);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@PostMapping("summernoteDelete")
	public ModelAndView setSummerNoteDelete(String file)throws Exception{
		ModelAndView mv = new ModelAndView();
		boolean result=noticeService.setSummerNoteDelete(file);
		mv.addObject("msg", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
}
