package com.example.board.mapper;

import com.example.board.model.BoardDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper // Mapper 인터페이스임을 선언
public interface BoardMapper {
    List<BoardDTO> findAll();

    //등록 (삽입)
    void insert(BoardDTO boardDTO);

    //상세 조회
    BoardDTO findById(int id);

    //삭제
    void delete(int id);

    //수정
    void update(BoardDTO boardDTO);
}
