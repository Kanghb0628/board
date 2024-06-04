package com.example.board.service;

import com.example.board.model.BoardDTO;

import java.util.List;

public interface BoardService {
    List<BoardDTO> getBoardList() ; //게시판 조회
    void createBoard(BoardDTO boardDTO); //게시판 글 등록
    BoardDTO findById(int id);
    void delete(int id);
    void update(BoardDTO boardDTO);
}
