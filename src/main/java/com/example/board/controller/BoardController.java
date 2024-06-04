package com.example.board.controller;

import com.example.board.model.BoardDTO;
import com.example.board.service.BoardService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller //리소스 파일 반환(템플릿엔진을통해)
@RequestMapping("/board")
@RequiredArgsConstructor
public class BoardController {
    private final BoardService boardService; //의존성주입 boardService

    @GetMapping("/list")
    public String list(Model model) {
        List<BoardDTO> boardList = boardService.getBoardList();
        model.addAttribute("boardList",boardList);
        return "list";
    }

    @GetMapping("/create")
    public String createForm() {
        return "create";
    }

    //게시글 작성
    @PostMapping("/create")
    public String create(@ModelAttribute BoardDTO boardDTO) {
        boardService.createBoard(boardDTO);
        return "redirect:/board/list";
    }


    //상세 페이지 이동
    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id")int id,Model model) {
        BoardDTO byId = boardService.findById(id);
        model.addAttribute("byId",byId);
        return "detail";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id")int id) {
        boardService.delete(id);
        return "redirect:/board/list";
    }

    //수정 페이지
    @GetMapping("/edit/{id}")
    public String update(@PathVariable("id")int id, Model model){
        BoardDTO board = boardService.findById(id);
        model.addAttribute("Id",board);
        return "edit";
    }
    @PostMapping("/edit/{id}")
    public String update(@PathVariable("id")int id,@ModelAttribute BoardDTO Id) {
        Id.setId(id);
        boardService.update(Id);
        return "redirect:/board/list";
    }
}
