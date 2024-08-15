package com.entity.view;

import org.apache.tools.ant.util.DateUtils;
import com.annotation.ColumnInfo;
import com.entity.LaoshiEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;
import com.utils.DateUtil;

/**
* 老师
* 后端返回视图实体辅助类
* （通常后端关联的表或者自定义的字段需要返回使用）
*/
@TableName("laoshi")
public class LaoshiView extends LaoshiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	//当前表
	/**
	* 性别的值
	*/
	@ColumnInfo(comment="性别的字典表值",type="varchar(200)")
	private String sexValue;
	/**
	* 学院的值
	*/
	@ColumnInfo(comment="学院的字典表值",type="varchar(200)")
	private String xueyuanValue;
	/**
	* 专业的值
	*/
	@ColumnInfo(comment="专业的字典表值",type="varchar(200)")
	private String zhuanyeValue;
	/**
	* 账户状态的值
	*/
	@ColumnInfo(comment="账户状态的字典表值",type="varchar(200)")
	private String jinyongValue;




	public LaoshiView() {

	}

	public LaoshiView(LaoshiEntity laoshiEntity) {
		try {
			BeanUtils.copyProperties(this, laoshiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



	//当前表的
	/**
	* 获取： 性别的值
	*/
	public String getSexValue() {
		return sexValue;
	}
	/**
	* 设置： 性别的值
	*/
	public void setSexValue(String sexValue) {
		this.sexValue = sexValue;
	}
	//当前表的
	/**
	* 获取： 学院的值
	*/
	public String getXueyuanValue() {
		return xueyuanValue;
	}
	/**
	* 设置： 学院的值
	*/
	public void setXueyuanValue(String xueyuanValue) {
		this.xueyuanValue = xueyuanValue;
	}
	//当前表的
	/**
	* 获取： 专业的值
	*/
	public String getZhuanyeValue() {
		return zhuanyeValue;
	}
	/**
	* 设置： 专业的值
	*/
	public void setZhuanyeValue(String zhuanyeValue) {
		this.zhuanyeValue = zhuanyeValue;
	}
	//当前表的
	/**
	* 获取： 账户状态的值
	*/
	public String getJinyongValue() {
		return jinyongValue;
	}
	/**
	* 设置： 账户状态的值
	*/
	public void setJinyongValue(String jinyongValue) {
		this.jinyongValue = jinyongValue;
	}




	@Override
	public String toString() {
		return "LaoshiView{" +
			", sexValue=" + sexValue +
			", xueyuanValue=" + xueyuanValue +
			", zhuanyeValue=" + zhuanyeValue +
			", jinyongValue=" + jinyongValue +
			"} " + super.toString();
	}
}
