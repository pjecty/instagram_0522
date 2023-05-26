package com.icia.instar.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;

@Getter
@Setter
@ToString
public class MemberFileDTO {
    private Long id;
    private String  originalFileName;
    private String   storedFileName;
    private Long memberId;

}
