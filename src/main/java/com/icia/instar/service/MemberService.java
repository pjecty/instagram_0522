package com.icia.instar.service;

import com.icia.instar.dto.MemberDTO;
import com.icia.instar.dto.MemberFileDTO;
import com.icia.instar.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Service
public class MemberService {

    @Autowired
    MemberRepository memberRepository;

    public void save(MemberDTO memberDTO) throws IOException {
        if (memberDTO.getProFile().isEmpty()) {
            // 파일 없음.
            System.out.println("파일없음");
            memberDTO.setFileAttached(0);
            memberRepository.save(memberDTO);
        } else {
            // 파일 있음.
            /*
                1. 파일첨부 여부 값 1로 세팅하고 DB에 제목 등 내용 board_table에 저장 처리
                2. 파일의 이름을 가져오고 DTO 필드값에 세팅
                3. 저장용 파일 이름 만들고 DTO 필드값에 세팅
                4. 로컬에 파일 저장
                5. board_file_table에 저장 처리
             */
            System.out.println("파일있음");
            memberDTO.setFileAttached(1);
            MemberDTO dto = memberRepository.save(memberDTO);
            // 원본 파일 이름 가져오기 / getOriginalFilename : MemberDTO의 MultipartFile
            String originalFilename = memberDTO.getProFile().getOriginalFilename();
            // 저장용 이름 만들기
            String storedFileName = System.currentTimeMillis() + "-" + originalFilename;
            // 저장을 위한 MemberDTO 셋팅
            MemberFileDTO memberFileDTO = new MemberFileDTO();
            memberFileDTO.setOriginalFileName(originalFilename);
            memberFileDTO.setStoredFileName(storedFileName);
            memberFileDTO.setMemberId(dto.getId());
            //로컬에 파일 저장
            // 저장할 경로 설정 ( 저장할 폴더 + 저장할이름)
            String savePath = "D:\\springframework_img\\" + storedFileName;
            // 저장처리
            memberDTO.getProFile().transferTo(new File(savePath));
            memberRepository.saveFile(memberFileDTO);
        }
    }




    public List<MemberDTO> findAll() {
        return memberRepository.findAll();
    }

    public MemberDTO login(MemberDTO memberDTO) {
        return memberRepository.login(memberDTO);

    }


    public MemberDTO findByEmail(String memberEmail) {
        return memberRepository.findByEmail(memberEmail);
    }

    public void update(MemberDTO memberDTO) {
        memberRepository.update(memberDTO);
    }

    public void updateA(MemberDTO memberDTO) {
        memberRepository.updateA(memberDTO);
    }

    public void delete(Long id) {
        memberRepository.delete(id);
    }
}
