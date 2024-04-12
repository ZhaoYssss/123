package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.FangjianyudingEntity;
import com.entity.view.FangjianyudingView;

import com.service.FangjianyudingService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 房间预订
 * 后端接口
 * @author 
 * @email 
 * @date 2024-03-27 21:37:18
 */
@RestController
@RequestMapping("/fangjianyuding")
public class FangjianyudingController {
    @Autowired
    private FangjianyudingService fangjianyudingService;




    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,FangjianyudingEntity fangjianyuding,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("minsushangjia")) {
			fangjianyuding.setMinsuhao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("yonghu")) {
			fangjianyuding.setYonghuzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<FangjianyudingEntity> ew = new EntityWrapper<FangjianyudingEntity>();

		PageUtils page = fangjianyudingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fangjianyuding), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,FangjianyudingEntity fangjianyuding, 
		HttpServletRequest request){
        EntityWrapper<FangjianyudingEntity> ew = new EntityWrapper<FangjianyudingEntity>();

		PageUtils page = fangjianyudingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fangjianyuding), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( FangjianyudingEntity fangjianyuding){
       	EntityWrapper<FangjianyudingEntity> ew = new EntityWrapper<FangjianyudingEntity>();
      	ew.allEq(MPUtil.allEQMapPre( fangjianyuding, "fangjianyuding")); 
        return R.ok().put("data", fangjianyudingService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(FangjianyudingEntity fangjianyuding){
        EntityWrapper< FangjianyudingEntity> ew = new EntityWrapper< FangjianyudingEntity>();
 		ew.allEq(MPUtil.allEQMapPre( fangjianyuding, "fangjianyuding")); 
		FangjianyudingView fangjianyudingView =  fangjianyudingService.selectView(ew);
		return R.ok("查询房间预订成功").put("data", fangjianyudingView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        FangjianyudingEntity fangjianyuding = fangjianyudingService.selectById(id);
        return R.ok().put("data", fangjianyuding);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        FangjianyudingEntity fangjianyuding = fangjianyudingService.selectById(id);
        return R.ok().put("data", fangjianyuding);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody FangjianyudingEntity fangjianyuding, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(fangjianyuding);
        fangjianyudingService.insert(fangjianyuding);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody FangjianyudingEntity fangjianyuding, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(fangjianyuding);
        fangjianyudingService.insert(fangjianyuding);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody FangjianyudingEntity fangjianyuding, HttpServletRequest request){
        //ValidatorUtils.validateEntity(fangjianyuding);
        fangjianyudingService.updateById(fangjianyuding);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        fangjianyudingService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
