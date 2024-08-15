package com.entity.view;

import org.apache.tools.ant.util.DateUtils;
import com.annotation.ColumnInfo;
import com.entity.JiangxuejinShenqingEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;
import com.utils.DateUtil;

/**
* 奖学金申请
* 后端返回视图实体辅助类
* （通常后端关联的表或者自定义的字段需要返回使用）
*/
@TableName("jiangxuejin_shenqing")
public class JiangxuejinShenqingView extends JiangxuejinShenqingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	//当前表
	/**
	* 奖学金申请类型的值
	*/
	@ColumnInfo(comment="奖学金申请类型的字典表值",type="varchar(200)")
	private String jiangxuejinShenqingValue;
	/**
	* 申请状态的值
	*/
	@ColumnInfo(comment="申请状态的字典表值",type="varchar(200)")
	private String jiangxuejinShenqingYesnoValue;

	//级联表 学生
		/**
		* 学号
		*/

		@ColumnInfo(comment="学号",type="varchar(200)")
		private String xueshengUuidNumber;
		/**
		* 学生姓名
		*/

		@ColumnInfo(comment="学生姓名",type="varchar(200)")
		private String xueshengName;
		/**
		* 学生手机号
		*/

		@ColumnInfo(comment="学生手机号",type="varchar(200)")
		private String xueshengPhone;
		/**
		* 学生身份证号
		*/

		@ColumnInfo(comment="学生身份证号",type="varchar(200)")
		private String xueshengIdNumber;
		/**
		* 学生头像
		*/

		@ColumnInfo(comment="学生头像",type="varchar(200)")
		private String xueshengPhoto;
		/**
		* 学生邮箱
		*/

		@ColumnInfo(comment="学生邮箱",type="varchar(200)")
		private String xueshengEmail;
		/**
		* 学院
		*/
		@ColumnInfo(comment="学院",type="int(11)")
		private Integer xueyuanTypes;
			/**
			* 学院的值
			*/
			@ColumnInfo(comment="学院的字典表值",type="varchar(200)")
			private String xueyuanValue;
		/**
		* 专业
		*/
		@ColumnInfo(comment="专业",type="int(11)")
		private Integer zhuanyeTypes;
			/**
			* 专业的值
			*/
			@ColumnInfo(comment="专业的字典表值",type="varchar(200)")
			private String zhuanyeValue;
		/**
		* 账户状态
		*/
		@ColumnInfo(comment="账户状态",type="int(11)")
		private Integer jinyongTypes;
			/**
			* 账户状态的值
			*/
			@ColumnInfo(comment="账户状态的字典表值",type="varchar(200)")
			private String jinyongValue;



	public JiangxuejinShenqingView() {

	}

	public JiangxuejinShenqingView(JiangxuejinShenqingEntity jiangxuejinShenqingEntity) {
		try {
			BeanUtils.copyProperties(this, jiangxuejinShenqingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



	//当前表的
	/**
	* 获取： 奖学金申请类型的值
	*/
	public String getJiangxuejinShenqingValue() {
		return jiangxuejinShenqingValue;
	}
	/**
	* 设置： 奖学金申请类型的值
	*/
	public void setJiangxuejinShenqingValue(String jiangxuejinShenqingValue) {
		this.jiangxuejinShenqingValue = jiangxuejinShenqingValue;
	}
	//当前表的
	/**
	* 获取： 申请状态的值
	*/
	public String getJiangxuejinShenqingYesnoValue() {
		return jiangxuejinShenqingYesnoValue;
	}
	/**
	* 设置： 申请状态的值
	*/
	public void setJiangxuejinShenqingYesnoValue(String jiangxuejinShenqingYesnoValue) {
		this.jiangxuejinShenqingYesnoValue = jiangxuejinShenqingYesnoValue;
	}


	//级联表的get和set 学生

		/**
		* 获取： 学号
		*/
		public String getXueshengUuidNumber() {
			return xueshengUuidNumber;
		}
		/**
		* 设置： 学号
		*/
		public void setXueshengUuidNumber(String xueshengUuidNumber) {
			this.xueshengUuidNumber = xueshengUuidNumber;
		}

		/**
		* 获取： 学生姓名
		*/
		public String getXueshengName() {
			return xueshengName;
		}
		/**
		* 设置： 学生姓名
		*/
		public void setXueshengName(String xueshengName) {
			this.xueshengName = xueshengName;
		}

		/**
		* 获取： 学生手机号
		*/
		public String getXueshengPhone() {
			return xueshengPhone;
		}
		/**
		* 设置： 学生手机号
		*/
		public void setXueshengPhone(String xueshengPhone) {
			this.xueshengPhone = xueshengPhone;
		}

		/**
		* 获取： 学生身份证号
		*/
		public String getXueshengIdNumber() {
			return xueshengIdNumber;
		}
		/**
		* 设置： 学生身份证号
		*/
		public void setXueshengIdNumber(String xueshengIdNumber) {
			this.xueshengIdNumber = xueshengIdNumber;
		}

		/**
		* 获取： 学生头像
		*/
		public String getXueshengPhoto() {
			return xueshengPhoto;
		}
		/**
		* 设置： 学生头像
		*/
		public void setXueshengPhoto(String xueshengPhoto) {
			this.xueshengPhoto = xueshengPhoto;
		}

		/**
		* 获取： 学生邮箱
		*/
		public String getXueshengEmail() {
			return xueshengEmail;
		}
		/**
		* 设置： 学生邮箱
		*/
		public void setXueshengEmail(String xueshengEmail) {
			this.xueshengEmail = xueshengEmail;
		}
		/**
		* 获取： 学院
		*/
		public Integer getXueyuanTypes() {
			return xueyuanTypes;
		}
		/**
		* 设置： 学院
		*/
		public void setXueyuanTypes(Integer xueyuanTypes) {
			this.xueyuanTypes = xueyuanTypes;
		}


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
		/**
		* 获取： 专业
		*/
		public Integer getZhuanyeTypes() {
			return zhuanyeTypes;
		}
		/**
		* 设置： 专业
		*/
		public void setZhuanyeTypes(Integer zhuanyeTypes) {
			this.zhuanyeTypes = zhuanyeTypes;
		}


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
		/**
		* 获取： 账户状态
		*/
		public Integer getJinyongTypes() {
			return jinyongTypes;
		}
		/**
		* 设置： 账户状态
		*/
		public void setJinyongTypes(Integer jinyongTypes) {
			this.jinyongTypes = jinyongTypes;
		}


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
		return "JiangxuejinShenqingView{" +
			", jiangxuejinShenqingValue=" + jiangxuejinShenqingValue +
			", jiangxuejinShenqingYesnoValue=" + jiangxuejinShenqingYesnoValue +
			", xueshengUuidNumber=" + xueshengUuidNumber +
			", xueshengName=" + xueshengName +
			", xueshengPhone=" + xueshengPhone +
			", xueshengIdNumber=" + xueshengIdNumber +
			", xueshengPhoto=" + xueshengPhoto +
			", xueshengEmail=" + xueshengEmail +
			"} " + super.toString();
	}
}
