  /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.houserent.serviceImpl;

import com.houserent.dao.ReplyDAO;
import com.houserent.pojo.Reply;
import com.houserent.service.ReplyService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service 
public class ReplyServiceImpl implements  ReplyService{
    
    @Autowired
    private ReplyDAO dao;

    @Override
    public List<Reply> getCommentReplyByCid(Integer Cid) {
         return dao.getAll(Cid);
    }

    @Override
    public void addHouseCommentReply(Reply reply) {
           dao.insert(reply);
    }

    
}
