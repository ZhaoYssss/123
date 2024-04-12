package com.entity.model;

import com.entity.FangjiantuidingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 房间退订
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2024-03-27 21:37:18
 */
public class FangjiantuidingModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 民宿号
	 */
	
	private String minsuhao;
		
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
	 * 房间价格/天
	 */
	
	private String fangjianjiage;
		
	/**
	 * 入住日期
	 */
	
	private String ruzhuriqi;
		
	/**
	 * 预订天数
	 */
	
	private String yudingtianshu;
		
	/**
	 * 订单金额
	 */
	
	private Integer dingdanjine;
		
	/**
	 * 用户账号
	 */
	
	private String yonghuzhanghao;
		
	/**
	 * 用户姓名
	 */
	
	private String yonghuxingming;
		
	/**
	 * 手机号码
	 */
	
	private String shoujihaoma;
		
	/**
	 * 预订时间
	 */
	
	private String yudingshijian;
		
	/**
	 * 取消时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date quxiaoshijian;
		
	/**
	 * 取消说明
	 */
	
	private String quxiaoshuoming;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
		
	/**
	 * 是否支付
	 */
	
	private String ispay;
				
	
	/**
	 * 设置：民宿号
	 */
	 
	public void setMinsuhao(String minsuhao) {
		this.minsuhao = minsuhao;
	}
	
	/**
	 * 获取：民宿号
	 */
	public String getMinsuhao() {
		return minsuhao;
	}
				
	
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
	 * 设置：房间价格/天
	 */
	 
	public void setFangjianjiage(String fangjianjiage) {
		this.fangjianjiage = fangjianjiage;
	}
	
	/**
	 * 获取：房间价格/天
	 */
	public String getFangjianjiage() {
		return fangjianjiage;
	}
				
	
	/**
	 * 设置：入住日期
	 */
	 
	public void setRuzhuriqi(String ruzhuriqi) {
		this.ruzhuriqi = ruzhuriqi;
	}
	
	/**
	 * 获取：入住日期
	 */
	public String getRuzhuriqi() {
		return ruzhuriqi;
	}
				
	
	/**
	 * 设置：预订天数
	 */
	 
	public void setYudingtianshu(String yudingtianshu) {
		this.yudingtianshu = yudingtianshu;
	}
	
	/**
	 * 获取：预订天数
	 */
	public String getYudingtianshu() {
		return yudingtianshu;
	}
				
	
	/**
	 * 设置：订单金额
	 */
	 
	public void setDingdanjine(Integer dingdanjine) {
		this.dingdanjine = dingdanjine;
	}
	
	/**
	 * 获取：订单金额
	 */
	public Integer getDingdanjine() {
		return dingdanjine;
	}
				
	
	/**
	 * 设置：用户账号
	 */
	 
	public void setYonghuzhanghao(String yonghuzhanghao) {
		this.yonghuzhanghao = yonghuzhanghao;
	}
	
	/**
	 * 获取：用户账号
	 */
	public String getYonghuzhanghao() {
		return yonghuzhanghao;
	}
				
	
	/**
	 * 设置：用户姓名
	 */
	 
	public void setYonghuxingming(String yonghuxingming) {
		this.yonghuxingming = yonghuxingming;
	}
	
	/**
	 * 获取：用户姓名
	 */
	public String getYonghuxingming() {
		return yonghuxingming;
	}
				
	
	/**
	 * 设置：手机号码
	 */
	 
	public void setShoujihaoma(String shoujihaoma) {
		this.shoujihaoma = shoujihaoma;
	}
	
	/**
	 * 获取：手机号码
	 */
	public String getShoujihaoma() {
		return shoujihaoma;
	}
				
	
	/**
	 * 设置：预订时间
	 */
	 
	public void setYudingshijian(String yudingshijian) {
		this.yudingshijian = yudingshijian;
	}
	
	/**
	 * 获取：预订时间
	 */
	public String getYudingshijian() {
		return yudingshijian;
	}
				
	
	/**
	 * 设置：取消时间
	 */
	 
	public void setQuxiaoshijian(Date quxiaoshijian) {
		this.quxiaoshijian = quxiaoshijian;
	}
	
	/**
	 * 获取：取消时间
	 */
	public Date getQuxiaoshijian() {
		return quxiaoshijian;
	}
				
	
	/**
	 * 设置：取消说明
	 */
	 
	public void setQuxiaoshuoming(String quxiaoshuoming) {
		this.quxiaoshuoming = quxiaoshuoming;
	}
	
	/**
	 * 获取：取消说明
	 */
	public String getQuxiaoshuoming() {
		return quxiaoshuoming;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
				
	
	/**
	 * 设置：是否支付
	 */
	 
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}
			
}
