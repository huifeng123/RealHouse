package com.tedu.controller;

import com.tedu.pojo.Notice;
import com.tedu.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by bigjsd on 2017/6/2.
 *
 */
@Controller
public class BackNoticeController {
    @Autowired
    private NoticeService noticeService;
    @RequestMapping("/back/NoticeInfo")
    public String toNoticeInfo(String id,Model model){
        Notice notice=noticeService.findOne(id);
        model.addAttribute("notice",notice);
        return "/back/backNoticeInfo";
    }
    @RequestMapping("/back/NoticeDelete")
    public String toNoticeDelete(@RequestParam(value="id",required=true)String[] ids){
        noticeService.deleteNotice(ids);
        return "redirect:/back/backNotice";
    }
    @RequestMapping("/back/toNoticeAdd")
    public String toNoticeAdd(){
        return "/back/backNoticeAdd";
    }
    @RequestMapping("/back/noticeAdd")
    public String saveNotice(Notice notice){
        noticeService.saveNotice(notice);
        return "redirect:/back/backNotice";
    }
    @RequestMapping("/back/NoticeUpdate")
    public String toUpdateNotice(Model model,String id){
        Notice notice=noticeService.findOne(id);
        model.addAttribute("notice",notice);
        return "/back/backNoticeUpdate";
    }
    @RequestMapping("/back/noticeUpdate")
    public String updateNotice(Notice notice){
        noticeService.updateNotice(notice);
        return "redirect:/back/backNotice";
    }


}
