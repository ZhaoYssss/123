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

import com.entity.FangjiantuidingEntity;
import com.entity.view.FangjiantuidingView;

import com.service.FangjiantuidingService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 房间退订
 * 后端接口
 * @author 
 * @email 
 * @date 2024-03-27 21:37:18
 */
@RestController
@RequestMapping("/fangjiantuiding")
public class FangjiantuidingController {
    @Autowired
    private FangjiantuidingService fangjiantuidingService;




    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,FangjiantuidingEntity fangjiantuiding,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("minsushangjia")) {
			fangjiantuiding.setMinsuhao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("yonghu")) {
			fangjiantuiding.setYonghuzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<FangjiantuidingEntity> ew = new EntityWrapper<FangjiantuidingEntity>();

		PageUtils page = fangjiantuidingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fangjiantuiding), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,FangjiantuidingEntity fangjiantuiding, 
		HttpServletRequest request){
        EntityWrapper<FangjiantuidingEntity> ew = new EntityWrapper<FangjiantuidingEntity>();

		PageUtils page = fangjiantuidingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fangjiantuiding), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( FangjiantuidingEntity fangjiantuiding){
       	EntityWrapper<FangjiantuidingEntity> ew = new EntityWrapper<FangjiantuidingEntity>();
      	ew.allEq(MPUtil.allEQMapPre( fangjiantuiding, "fangjiantuiding")); 
        return R.ok().put("data", fangjiantuidingService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(FangjiantuidingEntity fangjiantuiding){
        EntityWrapper< FangjiantuidingEntity> ew = new EntityWrapper< FangjiantuidingEntity>();
 		ew.allEq(MPUtil.allEQMapPre( fangjiantuiding, "fangjiantuiding")); 
		FangjiantuidingView fangjiantuidingView =  fangjiantuidingService.selectView(ew);
		return R.ok("查询房间退订成功").put("data", fangjiantuidingView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        FangjiantuidingEntity fangjiantuiding = fangjiantuidingService.selectById(id);
        return R.ok().put("data", fangjiantuiding);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        FangjiantuidingEntity fangjiantuiding = fangjiantuidingService.selectById(id);
        return R.ok().put("data", fangjiantuiding);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody FangjiantuidingEntity fangjiantuiding, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(fangjiantuiding);
        fangjiantuidingService.insert(fangjiantuiding);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody FangjiantuidingEntity fangjiantuiding, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(fangjiantuiding);
        fangjiantuidingService.insert(fangjiantuiding);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody FangjiantuidingEntity fangjiantuiding, HttpServletRequest request){
        //ValidatorUtils.validateEntity(fangjiantuiding);
        fangjiantuidingService.updateById(fangjiantuiding);//全部更新
        return R.ok();
    }

    /**
     * 审核
     */
    @RequestMapping("/shBatch")
    @Transactional
    public R update(@RequestBody Long[] ids, @RequestParam String sfsh, @RequestParam String shhf){
        List<FangjiantuidingEntity> list = new ArrayList<FangjiantuidingEntity>();
        for(Long id : ids) {
            FangjiantuidingEntity fangjiantuiding = fangjiantuidingService.selectById(id);
            fangjiantuiding.setSfsh(sfsh);
            fangjiantuiding.setShhf(shhf);
            list.add(fangjiantuiding);
        }
        fangjiantuidingService.updateBatchById(list);
        return R.ok();
    }


    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        fangjiantuidingService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
