package com.entity.vo;

import com.entity.KefangxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 客房信息
 * @author 
 * @email 
 * @date 2024-03-27 21:37:18
 */
public class KefangxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 民宿名称
	 */
	
	private String minsumingcheng;
		
	/**
	 * 房间号
	 */
	
	private String fangjianhao;
		
	/**
	 * 房间类型
	 */
	
	private String fangjianleixing;
		
	/**
	 * 房间图片
	 */
	
	private String fangjiantupian;
		
	/**
	 * 房间状态
	 */
	
	private String fangjianzhuangtai;
		
	/**
	 * 房间详情
	 */
	
	private String fangjianxiangqing;
		
	/**
	 * 房间价格/天
	 */
	
	private Integer fangjianjiage;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
				
	
	/**
	 * 设置：民宿名称
	 */
	 
	public void setMinsumingcheng(String minsumingcheng) {
		this.minsumingcheng = minsumingcheng;
	}
	
	/**
	 * 获取：民宿名称
	 */
	public String getMinsumingcheng() {
		return minsumingcheng;
	}
				
	
	/**
	 * 设置：房间号
	 */
	 
	public void setFangjianhao(String fangjianhao) {
		this.fangjianhao = fangjianhao;
	}
	
	/**
	 * 获取：房间号
	 */
	public String getFangjianhao() {
		return fangjianhao;
	}
				
	
	/**
	 * 设置：房间类型
	 */
	 
	public void setFangjianleixing(String fangjianleixing) {
		this.fangjianleixing = fangjianleixing;
	}
	
	/**
	 * 获取：房间类型
	 */
	public String getFangjianleixing() {
		return fangjianleixing;
	}
				
	
	/**
	 * 设置：房间图片
	 */
	 
	public void setFangjiantupian(String fangjiantupian) {
		this.fangjiantupian = fangjiantupian;
	}
	
	/**
	 * 获取：房间图片
	 */
	public String getFangjiantupian() {
		return fangjiantupian;
	}
				
	
	/**
	 * 设置：房间状态
	 */
	 
	public void setFangjianzhuangtai(String fangjianzhuangtai) {
		this.fangjianzhuangtai = fangjianzhuangtai;
	}
	
	/**
	 * 获取：房间状态
	 */
	public String getFangjianzhuangtai() {
		return fangjianzhuangtai;
	}
				
	
	/**
	 * 设置：房间详情
	 */
	 
	public void setFangjianxiangqing(String fangjianxiangqing) {
		this.fangjianxiangqing = fangjianxiangqing;
	}
	
	/**
	 * 获取：房间详情
	 */
	public String getFangjianxiangqing() {
		return fangjianxiangqing;
	}
				
	
	/**
	 * 设置：房间价格/天
	 */
	 
	public void setFangjianjiage(Integer fangjianjiage) {
		this.fangjianjiage = fangjianjiage;
	}
	
	/**
	 * 获取：房间价格/天
	 */
	public Integer getFangjianjiage() {
		return fangjianjiage;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次数
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
			
}
