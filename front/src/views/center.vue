<template>
  <div>
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      label-width="auto"
    >  
     <el-row>
                    <el-col :span="12">
           <el-form-item v-if="flag=='laoshi'"  label='工号' prop="laoshiUuidNumber">
               <el-input v-model="ruleForm.laoshiUuidNumber"disabled="true"   placeholder='工号' clearable></el-input>
           </el-form-item>
         </el-col>
         <el-col :span="12">
           <el-form-item v-if="flag=='laoshi'"  label='老师姓名' prop="laoshiName">
               <el-input v-model="ruleForm.laoshiName"  placeholder='老师姓名' clearable></el-input>
           </el-form-item>
         </el-col>
         <el-col :span="12">
           <el-form-item v-if="flag=='laoshi'"  label='老师手机号' prop="laoshiPhone">
               <el-input v-model="ruleForm.laoshiPhone"  placeholder='老师手机号' clearable></el-input>
           </el-form-item>
         </el-col>
         <el-col :span="12">
           <el-form-item v-if="flag=='laoshi'"  label='老师身份证号' prop="laoshiIdNumber">
               <el-input v-model="ruleForm.laoshiIdNumber"  placeholder='老师身份证号' clearable></el-input>
           </el-form-item>
         </el-col>
         <el-col :span="12">
             <el-form-item v-if="flag=='laoshi'" label='老师头像' prop="laoshiPhoto">
                 <file-upload
                         tip="点击上传照片"
                         action="file/upload"
                         :limit="3"
                         :multiple="true"
                         :fileUrls="ruleForm.laoshiPhoto?$base.url+ruleForm.laoshiPhoto:''"
                         @change="laoshiPhotoUploadChange"
                 ></file-upload>
             </el-form-item>
         </el-col>
         <el-col :span="12">
           <el-form-item v-if="flag=='laoshi'"  label='老师邮箱' prop="laoshiEmail">
               <el-input v-model="ruleForm.laoshiEmail"  placeholder='老师邮箱' clearable></el-input>
           </el-form-item>
         </el-col>
         <el-col :span="12">
             <el-form-item v-if="flag=='laoshi'"  label='学院' prop="xueyuanTypes">
                 <el-select v-model="ruleForm.xueyuanTypes" disabled  placeholder='请选择学院'>
                     <el-option
                             v-for="(item,index) in xueyuanTypesOptions"
                             v-bind:key="item.codeIndex"
                             :label="item.indexName"
                             :value="item.codeIndex">
                     </el-option>
                 </el-select>
             </el-form-item>
         </el-col>
         <el-col :span="12">
             <el-form-item v-if="flag=='laoshi'"  label='专业' prop="zhuanyeTypes">
                 <el-select v-model="ruleForm.zhuanyeTypes" disabled  placeholder='请选择专业'>
                     <el-option
                             v-for="(item,index) in zhuanyeTypesOptions"
                             v-bind:key="item.codeIndex"
                             :label="item.indexName"
                             :value="item.codeIndex">
                     </el-option>
                 </el-select>
             </el-form-item>
         </el-col>
         <el-col :span="12">
           <el-form-item v-if="flag=='xuesheng'"  label='学号' prop="xueshengUuidNumber">
               <el-input v-model="ruleForm.xueshengUuidNumber"disabled="true"   placeholder='学号' clearable></el-input>
           </el-form-item>
         </el-col>
         <el-col :span="12">
           <el-form-item v-if="flag=='xuesheng'"  label='学生姓名' prop="xueshengName">
               <el-input v-model="ruleForm.xueshengName"  placeholder='学生姓名' clearable></el-input>
           </el-form-item>
         </el-col>
         <el-col :span="12">
           <el-form-item v-if="flag=='xuesheng'"  label='学生手机号' prop="xueshengPhone">
               <el-input v-model="ruleForm.xueshengPhone"  placeholder='学生手机号' clearable></el-input>
           </el-form-item>
         </el-col>
         <el-col :span="12">
           <el-form-item v-if="flag=='xuesheng'"  label='学生身份证号' prop="xueshengIdNumber">
               <el-input v-model="ruleForm.xueshengIdNumber"  placeholder='学生身份证号' clearable></el-input>
           </el-form-item>
         </el-col>
         <el-col :span="12">
             <el-form-item v-if="flag=='xuesheng'" label='学生头像' prop="xueshengPhoto">
                 <file-upload
                         tip="点击上传照片"
                         action="file/upload"
                         :limit="3"
                         :multiple="true"
                         :fileUrls="ruleForm.xueshengPhoto?$base.url+ruleForm.xueshengPhoto:''"
                         @change="xueshengPhotoUploadChange"
                 ></file-upload>
             </el-form-item>
         </el-col>
         <el-col :span="12">
           <el-form-item v-if="flag=='xuesheng'"  label='学生邮箱' prop="xueshengEmail">
               <el-input v-model="ruleForm.xueshengEmail"  placeholder='学生邮箱' clearable></el-input>
           </el-form-item>
         </el-col>
         <el-col :span="12">
             <el-form-item v-if="flag=='xuesheng'"  label='学院' prop="xueyuanTypes">
                 <el-select v-model="ruleForm.xueyuanTypes" disabled placeholder='请选择学院'>
                     <el-option
                             v-for="(item,index) in xueyuanTypesOptions"
                             v-bind:key="item.codeIndex"
                             :label="item.indexName"
                             :value="item.codeIndex">
                     </el-option>
                 </el-select>
             </el-form-item>
         </el-col>
         <el-col :span="12">
             <el-form-item v-if="flag=='xuesheng'"  label='专业' prop="zhuanyeTypes">
                 <el-select v-model="ruleForm.zhuanyeTypes" disabled placeholder='请选择专业'>
                     <el-option
                             v-for="(item,index) in zhuanyeTypesOptions"
                             v-bind:key="item.codeIndex"
                             :label="item.indexName"
                             :value="item.codeIndex">
                     </el-option>
                 </el-select>
             </el-form-item>
         </el-col>
         <el-form-item v-if="flag=='users'" label="用户名" prop="username">
             <el-input v-model="ruleForm.username"
                       placeholder="用户名"></el-input>
         </el-form-item>
         <el-col :span="12">
             <el-form-item v-if="flag!='users' &&( 1==2|| flag=='xuesheng'
|| flag=='laoshi')"  label="性别" prop="sexTypes">
                 <el-select v-model="ruleForm.sexTypes" placeholder="请选择性别">
                     <el-option
                             v-for="(item,index) in sexTypesOptions"
                             v-bind:key="item.codeIndex"
                             :label="item.indexName"
                             :value="item.codeIndex">
                     </el-option>
                 </el-select>
             </el-form-item>
         </el-col>
         <el-col :span="24">
             <el-form-item>
                 <el-button type="primary" @click="onUpdateHandler">修 改</el-button>
             </el-form-item>
         </el-col>
     </el-row>
    </el-form>
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isPhone,isURL,checkIdCard } from "@/utils/validate";

export default {
  data() {
    return {
        ruleForm: {},
        flag: '',
        usersFlag: false,
        // sexTypesOptions : [],
// 注册表 学生
    // 注册的类型字段 学生
        // 性别
        sexTypesOptions : [],
        // 学院
        xueyuanTypesOptions : [],
        // 专业
        zhuanyeTypesOptions : [],
        // 账户状态
        jinyongTypesOptions : [],
// 注册表 老师
    // 注册的类型字段 老师
        // 性别
        sexTypesOptions : [],
        // 学院
        xueyuanTypesOptions : [],
        // 专业
        zhuanyeTypesOptions : [],
        // 账户状态
        jinyongTypesOptions : [],
    };
  },
  mounted() {
    //获取当前登录用户的信息
    var table = this.$storage.get("sessionTable");
    this.sessionTable = this.$storage.get("sessionTable");
    this.role = this.$storage.get("role");
    if (this.role != "管理员"){
    }

    this.flag = table;
    this.$http({
      url: `${this.$storage.get("sessionTable")}/session`,
      method: "get"
    }).then(({ data }) => {
      if (data && data.code === 0) {
        this.ruleForm = data.data;
// 注册表 学生
// 注册表 老师
      } else {
        this.$message.error(data.msg);
      }
    });

// 注册表 学生 的级联表
// 注册表 老师 的级联表

      this.$http({
          url: `dictionary/page?page=1&limit=100&sort=&order=&dicCode=sex_types`,
          method: "get"
      }).then(({ data }) => {
          if (data && data.code === 0) {
              this.sexTypesOptions = data.data.list;
          } else {
              this.$message.error(data.msg);
          }
      });
   this.$http({
       url: `dictionary/page?page=1&limit=100&sort=&order=&dicCode=xueyuan_types`,
       method: "get"
   }).then(({ data }) => {
       if (data && data.code === 0) {
          this.xueyuanTypesOptions = data.data.list;
      } else {
          this.$message.error(data.msg);
      }
    });
   this.$http({
       url: `dictionary/page?page=1&limit=100&sort=&order=&dicCode=zhuanye_types`,
       method: "get"
   }).then(({ data }) => {
       if (data && data.code === 0) {
          this.zhuanyeTypesOptions = data.data.list;
      } else {
          this.$message.error(data.msg);
      }
    });
   this.$http({
       url: `dictionary/page?page=1&limit=100&sort=&order=&dicCode=jinyong_types`,
       method: "get"
   }).then(({ data }) => {
       if (data && data.code === 0) {
          this.jinyongTypesOptions = data.data.list;
      } else {
          this.$message.error(data.msg);
      }
    });
   this.$http({
       url: `dictionary/page?page=1&limit=100&sort=&order=&dicCode=xueyuan_types`,
       method: "get"
   }).then(({ data }) => {
       if (data && data.code === 0) {
          this.xueyuanTypesOptions = data.data.list;
      } else {
          this.$message.error(data.msg);
      }
    });
   this.$http({
       url: `dictionary/page?page=1&limit=100&sort=&order=&dicCode=zhuanye_types`,
       method: "get"
   }).then(({ data }) => {
       if (data && data.code === 0) {
          this.zhuanyeTypesOptions = data.data.list;
      } else {
          this.$message.error(data.msg);
      }
    });
   this.$http({
       url: `dictionary/page?page=1&limit=100&sort=&order=&dicCode=jinyong_types`,
       method: "get"
   }).then(({ data }) => {
       if (data && data.code === 0) {
          this.jinyongTypesOptions = data.data.list;
      } else {
          this.$message.error(data.msg);
      }
    });
  },
  methods: {
    chongzhi() {
      this.$router.replace({ path: "/pay" });
    },
    tixian() {
      let _this=this;
      this.$confirm(`确定要提现么?`, "提示", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
      }).then(() => {
          _this.ruleForm.newMoney=0;
          _this.$http({
              url: `${this.$storage.get("sessionTable")}/update`,
              method: "post",
              data: this.ruleForm
          }).then(({ data }) => {
              if (data && data.code === 0) {
                  _this.$message({message: "提现成功",type: "success",duration: 1500,onClose: () => {}});
              } else {this.$message.error(data.msg);}
          });
      });
    },
    laoshiPhotoUploadChange(fileUrls) {
        this.ruleForm.laoshiPhoto = fileUrls;
    },
    xueshengPhotoUploadChange(fileUrls) {
        this.ruleForm.xueshengPhoto = fileUrls;
    },


    onUpdateHandler() {
                         if((!this.ruleForm.laoshiUuidNumber)&& 'laoshi'==this.flag){
                             this.$message.error('工号不能为空');
                             return
                         }

                         if((!this.ruleForm.laoshiName)&& 'laoshi'==this.flag){
                             this.$message.error('老师姓名不能为空');
                             return
                         }

                             if( 'laoshi' ==this.flag && this.ruleForm.laoshiPhone&&(!isMobile(this.ruleForm.laoshiPhone))){
                                 this.$message.error(`手机应输入手机格式`);
                                 return
                             }
                         if((!this.ruleForm.laoshiIdNumber)&& 'laoshi'==this.flag){
                             this.$message.error('老师身份证号不能为空');
                             return
                         }

                         if((!this.ruleForm.laoshiPhoto)&& 'laoshi'==this.flag){
                             this.$message.error('老师头像不能为空');
                             return
                         }

                             if( 'laoshi' ==this.flag && this.ruleForm.laoshiEmail&&(!isEmail(this.ruleForm.laoshiEmail))){
                                 this.$message.error(`邮箱应输入邮箱格式`);
                                 return
                             }
                         if((!this.ruleForm.xueyuanTypes)&& 'laoshi'==this.flag){
                             this.$message.error('学院不能为空');
                             return
                         }

                         if((!this.ruleForm.zhuanyeTypes)&& 'laoshi'==this.flag){
                             this.$message.error('专业不能为空');
                             return
                         }

                         if((!this.ruleForm.jinyongTypes)&& 'laoshi'==this.flag){
                             this.$message.error('账户状态不能为空');
                             return
                         }

                         if((!this.ruleForm.xueshengUuidNumber)&& 'xuesheng'==this.flag){
                             this.$message.error('学号不能为空');
                             return
                         }

                         if((!this.ruleForm.xueshengName)&& 'xuesheng'==this.flag){
                             this.$message.error('学生姓名不能为空');
                             return
                         }

                             if( 'xuesheng' ==this.flag && this.ruleForm.xueshengPhone&&(!isMobile(this.ruleForm.xueshengPhone))){
                                 this.$message.error(`手机应输入手机格式`);
                                 return
                             }
                         if((!this.ruleForm.xueshengIdNumber)&& 'xuesheng'==this.flag){
                             this.$message.error('学生身份证号不能为空');
                             return
                         }

                         if((!this.ruleForm.xueshengPhoto)&& 'xuesheng'==this.flag){
                             this.$message.error('学生头像不能为空');
                             return
                         }

                             if( 'xuesheng' ==this.flag && this.ruleForm.xueshengEmail&&(!isEmail(this.ruleForm.xueshengEmail))){
                                 this.$message.error(`邮箱应输入邮箱格式`);
                                 return
                             }
                         if((!this.ruleForm.xueyuanTypes)&& 'xuesheng'==this.flag){
                             this.$message.error('学院不能为空');
                             return
                         }

                         if((!this.ruleForm.zhuanyeTypes)&& 'xuesheng'==this.flag){
                             this.$message.error('专业不能为空');
                             return
                         }

                         if((!this.ruleForm.jinyongTypes)&& 'xuesheng'==this.flag){
                             this.$message.error('账户状态不能为空');
                             return
                         }

        if((!this.ruleForm.sexTypes) && (1==2|| this.flag=='xuesheng'
|| this.flag=='laoshi')){
            this.$message.error('性别不能为空');
            return
        }
      if('users'==this.flag && this.ruleForm.username.trim().length<1) {
        this.$message.error(`用户名不能为空`);
        return	
      }
      this.$http({
        url: `${this.$storage.get("sessionTable")}/update`,
        method: "post",
        data: this.ruleForm
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.$message({
            message: "修改信息成功",
            type: "success",
            duration: 1500,
            onClose: () => {
            }
          });
        } else {
          this.$message.error(data.msg);
        }
      });
    }
  }
};
</script>
<style lang="scss" scoped>
</style>
