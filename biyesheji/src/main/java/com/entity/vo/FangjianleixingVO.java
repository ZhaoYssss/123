package com.entity.vo;

import com.entity.FangjianleixingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 房间类型
 * @author 
 * @email 
 * @date 2024-03-27 21:37:18
 */
public class FangjianleixingVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 图片
	 */
	
	private String image;
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setImage(String image) {
		this.image = image;
	}
	
	/**
	 * 获取：图片
	 */
	public String getImage() {
		return image;
	}
			
}
