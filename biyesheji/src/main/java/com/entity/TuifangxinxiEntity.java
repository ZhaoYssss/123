package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 退房信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-03-27 21:37:18
 */
@TableName("tuifangxinxi")
public class TuifangxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public TuifangxinxiEntity() {
		
	}
	
	public TuifangxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
    @TableId(type = IdType.AUTO)
    private Long id;
	/**
	 * 订单编号
	 */
					
	private String dingdanbianhao;
	
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
	 * 退房时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date tuifangshijian;
	
	/**
	 * 是否审核
	 */
					
	private String sfsh;
	
	/**
	 * 审核回复
	 */
					
	private String shhf;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：订单编号
	 */
	public void setDingdanbianhao(String dingdanbianhao) {
		this.dingdanbianhao = dingdanbianhao;
	}
	/**
	 * 获取：订单编号
	 */
	public String getDingdanbianhao() {
		return dingdanbianhao;
	}
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
	 * 设置：退房时间
	 */
	public void setTuifangshijian(Date tuifangshijian) {
		this.tuifangshijian = tuifangshijian;
	}
	/**
	 * 获取：退房时间
	 */
	public Date getTuifangshijian() {
		return tuifangshijian;
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

}
