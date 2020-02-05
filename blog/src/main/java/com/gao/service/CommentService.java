package com.gao.service;

import com.gao.pojo.Comment;

import java.util.List;

public interface CommentService {

    List<Comment> listCommentByBlogId(Long blogId);

    int saveComment(Comment comment);
}
