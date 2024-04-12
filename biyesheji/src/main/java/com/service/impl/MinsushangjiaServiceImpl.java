package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.MinsushangjiaDao;
import com.entity.MinsushangjiaEntity;
import com.service.MinsushangjiaService;
import com.entity.vo.MinsushangjiaVO;
import com.entity.view.MinsushangjiaView;

@Service("minsushangjiaService")
public class MinsushangjiaServiceImpl extends ServiceImpl<MinsushangjiaDao, MinsushangjiaEntity> implements MinsushangjiaService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<MinsushangjiaEntity> page = this.selectPage(
                new Query<MinsushangjiaEntity>(params).getPage(),
                new EntityWrapper<MinsushangjiaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<MinsushangjiaEntity> wrapper) {
		  Page<MinsushangjiaView> page =new Query<MinsushangjiaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<MinsushangjiaVO> selectListVO(Wrapper<MinsushangjiaEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public MinsushangjiaVO selectVO(Wrapper<MinsushangjiaEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<MinsushangjiaView> selectListView(Wrapper<MinsushangjiaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public MinsushangjiaView selectView(Wrapper<MinsushangjiaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
