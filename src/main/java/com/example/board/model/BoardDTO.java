package com.example.board.model;

import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

@Getter
@Setter
public class BoardDTO {
    private int id;             //게시판 아이디
    private String title;       //게시판 제목
    private String content;     //게시판 내용
    private String writer;      //게시판 작성자
    private Timestamp createdDt;//작성일자
    private Timestamp updatedDt;//수정일자
}
