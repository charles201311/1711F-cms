package com.bobo.cms.service.impl;

import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bobo.cms.dao.VoteMapper;
import com.bobo.cms.domain.Vote;
import com.bobo.cms.service.VoteService;
import com.bobo.common.utils.NumberUtil;

@Service
public class VoteServiceImpl implements VoteService {
	@Resource
	private VoteMapper voteMapper;

	@Override
	public int insert(Vote vote) {
		return voteMapper.insert(vote);
	}

	@Override
	public List<Vote> selects(Integer articleId) {
		List<Vote> list = voteMapper.selects(articleId);
		
		return list;
	}

	@Override
	public Vote select(Vote vote) {
		// TODO Auto-generated method stub
		return voteMapper.select(vote);
	}

}
