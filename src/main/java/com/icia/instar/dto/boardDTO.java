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
public class boardDTO {
    private Long id;
    private String boardTitle;
    private String boardContents;
    private int boardHits;
    private Timestamp memberCreatedDate;
    private int fileAttached;
    private List<MultipartFile> boardFile;
}
