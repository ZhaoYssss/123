package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.MinsushangjiaEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.MinsushangjiaVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.MinsushangjiaView;


/**
 * 民宿商家
 *
 * @author 
 * @email 
 * @date 2024-03-27 21:37:18
 */
public interface MinsushangjiaService extends IService<MinsushangjiaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<MinsushangjiaVO> selectListVO(Wrapper<MinsushangjiaEntity> wrapper);
   	
   	MinsushangjiaVO selectVO(@Param("ew") Wrapper<MinsushangjiaEntity> wrapper);
   	
   	List<MinsushangjiaView> selectListView(Wrapper<MinsushangjiaEntity> wrapper);
   	
   	MinsushangjiaView selectView(@Param("ew") Wrapper<MinsushangjiaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<MinsushangjiaEntity> wrapper);

   	

}

