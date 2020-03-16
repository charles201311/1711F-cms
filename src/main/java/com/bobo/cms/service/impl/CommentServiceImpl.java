package com.bobo.cms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bobo.cms.dao.CommentMapper;
import com.bobo.cms.domain.Article;
import com.bobo.cms.domain.Comment;
import com.bobo.cms.service.CommentService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Resource
	private CommentMapper commentMapper;

	@Override
	public int insert(Comment comment) {
		try {
			//增加评论
			commentMapper.insert(comment);
			//让文章的评论数量+1
			commentMapper.updateArticle(comment.getArticleId());
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return 0;
	}

	@Override
	public PageInfo<Comment> selects(Article article, Integer page, Integer pageSize) {
		PageHelper.startPage(page, pageSize);
		List<Comment> list = commentMapper.selects(article);
		return new PageInfo<Comment>(list);
	}

	@Override
	public PageInfo<Article> selectsByCommentNum(Integer page,Integer pageSize) {
		PageHelper.startPage(page, pageSize);
		List<Article> list = commentMapper.selectsByCommentNum();
		return new PageInfo<Article>(list);
	}

}
