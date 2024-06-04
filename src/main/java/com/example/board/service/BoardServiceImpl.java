package com.example.board.service;

import com.example.board.mapper.BoardMapper;
import com.example.board.model.BoardDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {

    private final BoardMapper boardMapper; //DI 의존성주입 BoardMapper

    @Override
    public List<BoardDTO> getBoardList() {
        List<BoardDTO> all = boardMapper.findAll();
        return all;

    }
    //게시글 작성
    @Override
    public void createBoard(BoardDTO boardDTO) {
        boardMapper.insert(boardDTO);
    }

    //상세 조회
    @Override
    public BoardDTO findById(int id) {
        return boardMapper.findById(id);
    }

    @Override
    public void delete(int id) {
        boardMapper.delete(id);
    }

    @Override
    public void update(BoardDTO boardDTO) {
        boardMapper.update(boardDTO);
    }


}
