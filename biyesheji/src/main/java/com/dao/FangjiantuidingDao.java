package com.dao;

import com.entity.FangjiantuidingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.FangjiantuidingVO;
import com.entity.view.FangjiantuidingView;


/**
 * 房间退订
 * 
 * @author 
 * @email 
 * @date 2024-03-27 21:37:18
 */
public interface FangjiantuidingDao extends BaseMapper<FangjiantuidingEntity> {
	
	List<FangjiantuidingVO> selectListVO(@Param("ew") Wrapper<FangjiantuidingEntity> wrapper);
	
	FangjiantuidingVO selectVO(@Param("ew") Wrapper<FangjiantuidingEntity> wrapper);
	
	List<FangjiantuidingView> selectListView(@Param("ew") Wrapper<FangjiantuidingEntity> wrapper);

	List<FangjiantuidingView> selectListView(Pagination page,@Param("ew") Wrapper<FangjiantuidingEntity> wrapper);

	
	FangjiantuidingView selectView(@Param("ew") Wrapper<FangjiantuidingEntity> wrapper);
	

}
