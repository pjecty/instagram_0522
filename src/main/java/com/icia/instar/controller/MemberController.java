package com.icia.instar.controller;

import com.icia.instar.dto.MemberDTO;
import com.icia.instar.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
public class MemberController {

    @Autowired
    private MemberService memberService;

    @GetMapping("/saveform")
    public String saveform(){
        return "memberSave";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO) throws IOException {
        memberService.save(memberDTO);
        return "index";

    }

    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, Model model, HttpSession session) {

        MemberDTO dto = memberService.login(memberDTO);
        session.setAttribute("loginEmail", memberDTO.getMemberEmail());
        if (dto.getMemberEmail() == null) {
            return "index";
        } else if(dto.getMemberEmail().equals("admin")) {
            return "redirect:/list";
        } else {
            return "memberMain";
        }
    }

    @GetMapping("/list")
    public String findAll(Model model){
        List<MemberDTO> memberDTOList = memberService.findAll();
        model.addAttribute("memberList", memberDTOList);
        return "memberList";
    }

    @GetMapping("/memberDetail")
    public String memberDetail(){
        return "memberDetail";
    }

    @GetMapping("/member")
    public String findByEmail(@RequestParam("memberEmail") String memberEmail, Model model){
    MemberDTO memberDTO = memberService.findByEmail(memberEmail);
    model.addAttribute("member", memberDTO);
    return "memberDetail";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute MemberDTO memberDTO) {
        memberService.update(memberDTO);
        return "/memberMain";
    }
    @PostMapping("/updateA")
  public String updateA(@ModelAttribute MemberDTO memberDTO) {
      memberService.updateA(memberDTO);
      return "redirect:/list";
  }

    @GetMapping("memberDetailAdmin")
    public String updateA(@RequestParam("memberEmail") String memberEmail, Model model) {
        MemberDTO memberDTO = memberService.findByEmail(memberEmail);
        model.addAttribute("member", memberDTO);
        return "/memberDetailAdmin";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id){
        memberService.delete(id);
        return "redirect:/list";
    }

    @GetMapping("boardSave")
    public String boardSave(){
        return "boardSave";
    }
}
