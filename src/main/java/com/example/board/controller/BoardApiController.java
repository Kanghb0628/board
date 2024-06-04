package com.example.board.controller;

import com.example.board.mapper.BoardMapper;
import com.example.board.model.BoardDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class BoardApiController {
    private final BoardMapper boardMapper; //생성자주입 DI

    @GetMapping("/list")
    public List<BoardDTO> list() {
        List<BoardDTO> all = boardMapper.findAll();
        return all;
    }
}
