package com.dao;

import com.entity.MinsushangjiaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.MinsushangjiaVO;
import com.entity.view.MinsushangjiaView;


/**
 * 民宿商家
 * 
 * @author 
 * @email 
 * @date 2024-03-27 21:37:18
 */
public interface MinsushangjiaDao extends BaseMapper<MinsushangjiaEntity> {
	
	List<MinsushangjiaVO> selectListVO(@Param("ew") Wrapper<MinsushangjiaEntity> wrapper);
	
	MinsushangjiaVO selectVO(@Param("ew") Wrapper<MinsushangjiaEntity> wrapper);
	
	List<MinsushangjiaView> selectListView(@Param("ew") Wrapper<MinsushangjiaEntity> wrapper);

	List<MinsushangjiaView> selectListView(Pagination page,@Param("ew") Wrapper<MinsushangjiaEntity> wrapper);

	
	MinsushangjiaView selectView(@Param("ew") Wrapper<MinsushangjiaEntity> wrapper);
	

}
