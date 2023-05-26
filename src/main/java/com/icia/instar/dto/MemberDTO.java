package com.icia.instar.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;
import java.util.List;

@Getter
@Setter
@ToString
public class MemberDTO {
    private Long id;
    private String memberEmail;
    private String memberPassword;
    private String memberNickName;
    private String memberName;
    private String memberMobile;
    private int fileAttached;
    private Timestamp memberCreatedDate;
    private MultipartFile proFile;
}
