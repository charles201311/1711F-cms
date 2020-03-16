package com.bobo.cms.service;

import java.util.List;

import com.bobo.cms.domain.Article;
import com.bobo.cms.domain.Comment;
import com.github.pagehelper.PageInfo;

public interface CommentService {

	
	/**
	 * 
	 * @Title: selectsByCommentNum 
	 * @Description: 按照评论数量排序
	 * @return
	 * @return: List<Comment>
	 */
	PageInfo<Article> selectsByCommentNum(Integer page,Integer pageSize);
	

	/**
	 * 
	 * @Title: insert 
	 * @Description: 增加评论
	 * @param comment
	 * @return
	 * @return: int
	 */
	int insert(Comment comment);
	/**
	 * 
	 * @Title: selects 
	 * @Description: 根据文章查询文章评论
	 * @param article
	 * @return
	 * @return: List<Comment>
	 */
	PageInfo<Comment> selects(Article article,Integer page,Integer pageSize);
}
