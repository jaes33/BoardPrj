package com.jae.board.service.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jae.board.data.vo.Board;
import com.jae.board.data.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {
 
    @Autowired
    BoardMapper boardMapper;
    
    public List<Board> boardList() throws Exception{
        
        return boardMapper.boardList();
    }
    
    public Board boardDetail(int id) throws Exception{
        
        return boardMapper.boardDetail(id);
    }
    
    public int boardInsert(Board board) throws Exception{
        
        return boardMapper.boardInsert(board);
    }
    
    public int boardUpdate(Board board) throws Exception{
        
        return boardMapper.boardUpdate(board);
    }
    
    public int boardDelete(int id) throws Exception{
        
        return boardMapper.boardDelete(id);
    }
}

