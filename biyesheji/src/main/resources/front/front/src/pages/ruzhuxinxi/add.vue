<template>
<div :style='{"width":"100%","padding":"30px 7% 40px","margin":"0px auto","position":"relative","background":"#fff"}'>
    <el-form
	  :style='{"border":"1px solid #eee","width":"100%","padding":"30px","position":"relative","background":"#fcfcfc"}'
      class="add-update-preview"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="180px"
    >
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="订单编号" prop="dingdanbianhao">
            <el-input v-model="ruleForm.dingdanbianhao" 
                placeholder="订单编号" clearable :disabled=" false  ||ro.dingdanbianhao"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="民宿号" prop="minsuhao">
            <el-input v-model="ruleForm.minsuhao" 
                placeholder="民宿号" clearable :disabled=" false  ||ro.minsuhao"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="民宿名称" prop="minsumingcheng">
            <el-input v-model="ruleForm.minsumingcheng" 
                placeholder="民宿名称" clearable :disabled=" false  ||ro.minsumingcheng"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="房间号" prop="fangjianhao">
            <el-input v-model="ruleForm.fangjianhao" 
                placeholder="房间号" clearable :disabled=" false  ||ro.fangjianhao"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="房间类型" prop="fangjianleixing">
            <el-input v-model="ruleForm.fangjianleixing" 
                placeholder="房间类型" clearable :disabled=" false  ||ro.fangjianleixing"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="房间图片" v-if="type!='cross' || (type=='cross' && !ro.fangjiantupian)" prop="fangjiantupian">
            <file-upload
            tip="点击上传房间图片"
            action="file/upload"
            :limit="3"
            :multiple="true"
            :fileUrls="ruleForm.fangjiantupian?ruleForm.fangjiantupian:''"
            @change="fangjiantupianUploadChange"
            ></file-upload>
          </el-form-item>
            <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' class="upload" v-else label="房间图片" prop="fangjiantupian">
                <img v-if="ruleForm.fangjiantupian.substring(0,4)=='http'" class="upload-img" style="margin-right:20px;" v-bind:key="index" :src="ruleForm.fangjiantupian.split(',')[0]" width="100" height="100">
                <img v-else class="upload-img" style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.fangjiantupian.split(',')" :src="baseUrl+item" width="100" height="100">
            </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="房间价格/天" prop="fangjianjiage">
            <el-input v-model="ruleForm.fangjianjiage" 
                placeholder="房间价格/天" clearable :disabled=" false  ||ro.fangjianjiage"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="入住日期" prop="ruzhuriqi">
            <el-input v-model="ruleForm.ruzhuriqi" 
                placeholder="入住日期" clearable :disabled=" false  ||ro.ruzhuriqi"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="预订天数" prop="yudingtianshu">
            <el-input v-model.number="ruleForm.yudingtianshu" 
                placeholder="预订天数" clearable :disabled=" false  ||ro.yudingtianshu"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="订单金额" prop="dingdanjine">
            <el-input v-model.number="ruleForm.dingdanjine" 
                placeholder="订单金额" clearable :disabled=" false  ||ro.dingdanjine"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="用户账号" prop="yonghuzhanghao">
            <el-input v-model="ruleForm.yonghuzhanghao" 
                placeholder="用户账号" clearable :disabled=" false  ||ro.yonghuzhanghao"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="用户姓名" prop="yonghuxingming">
            <el-input v-model="ruleForm.yonghuxingming" 
                placeholder="用户姓名" clearable :disabled=" false  ||ro.yonghuxingming"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="手机号码" prop="shoujihaoma">
            <el-input v-model="ruleForm.shoujihaoma" 
                placeholder="手机号码" clearable :disabled=" false  ||ro.shoujihaoma"></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}' label="入住时间" prop="ruzhushijian">
              <el-date-picker
				  :disabled=" false  ||ro.ruzhushijian"
                  value-format="yyyy-MM-dd HH:mm:ss"
                  v-model="ruleForm.ruzhushijian" 
                  type="datetime"
                  placeholder="入住时间">
              </el-date-picker>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"none"}'  label="入住状态" prop="ruzhuzhuangtai">
            <el-select v-model="ruleForm.ruzhuzhuangtai" placeholder="请选择入住状态" :disabled="true  ||ro.ruzhuzhuangtai" >
              <el-option
                  v-for="(item,index) in ruzhuzhuangtaiOptions"
                  :key="index"
                  :label="item"
                  :value="item">
              </el-option>
            </el-select>
          </el-form-item>

      <el-form-item :style='{"padding":"0","margin":"0"}'>
        <el-button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 20px 0 0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"4px","background":"#F5BB00","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}'  type="primary" @click="onSubmit">提交</el-button>
        <el-button :style='{"border":"0px solid rgba(64, 158, 255, 1)","cursor":"pointer","padding":"0","margin":"0","outline":"none","color":"#fff","borderRadius":"4px","background":"#333","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}' @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
</div>
</template>

<script>
  export default {
    data() {
	  let self = this
      return {
        id: '',
        baseUrl: '',
        ro:{
				dingdanbianhao : false,
				minsuhao : false,
				minsumingcheng : false,
				fangjianhao : false,
				fangjianleixing : false,
				fangjiantupian : false,
				fangjianjiage : false,
				ruzhuriqi : false,
				yudingtianshu : false,
				dingdanjine : false,
				yonghuzhanghao : false,
				yonghuxingming : false,
				shoujihaoma : false,
				ruzhushijian : false,
				ruzhuzhuangtai : false,
				crossuserid : false,
				crossrefid : false,
				sfsh : false,
				shhf : false,
        },
        type: '',
        userTableName: localStorage.getItem('UserTableName'),
        ruleForm: {
          dingdanbianhao: '',
          minsuhao: '',
          minsumingcheng: '',
          fangjianhao: '',
          fangjianleixing: '',
          fangjiantupian: '',
          fangjianjiage: '',
          ruzhuriqi: '',
          yudingtianshu: '',
          dingdanjine: '',
          yonghuzhanghao: '',
          yonghuxingming: '',
          shoujihaoma: '',
          ruzhushijian: '',
          ruzhuzhuangtai: '已入住' ,
          crossuserid: '',
          crossrefid: '',
        },
        ruzhuzhuangtaiOptions: [],


        rules: {
          dingdanbianhao: [
          ],
          minsuhao: [
          ],
          minsumingcheng: [
          ],
          fangjianhao: [
          ],
          fangjianleixing: [
          ],
          fangjiantupian: [
          ],
          fangjianjiage: [
          ],
          ruzhuriqi: [
          ],
          yudingtianshu: [
            { validator: this.$validate.isIntNumer, trigger: 'blur' },
          ],
          dingdanjine: [
            { validator: this.$validate.isIntNumer, trigger: 'blur' },
          ],
          yonghuzhanghao: [
          ],
          yonghuxingming: [
          ],
          shoujihaoma: [
          ],
          ruzhushijian: [
          ],
          ruzhuzhuangtai: [
          ],
          crossuserid: [
          ],
          crossrefid: [
          ],
          sfsh: [
          ],
          shhf: [
          ],
        },
		centerType: false,
      };
    },
    computed: {



    },
    components: {
    },
    created() {
		if(this.$route.query.centerType){
			this.centerType = true
		}
	  //this.bg();
      let type = this.$route.query.type ? this.$route.query.type : '';
      this.init(type);
      this.baseUrl = this.$config.baseUrl;
      this.ruleForm.ruzhushijian = this.getCurDateTime()
    },
    methods: {
      getMakeZero(s) {
          return s < 10 ? '0' + s : s;
      },
      // 下载
      download(file){
        window.open(`${file}`)
      },
      // 初始化
      init(type) {
        this.type = type;
        if(type=='cross'){
          var obj = JSON.parse(localStorage.getItem('crossObj'));
          for (var o in obj){
            if(o=='dingdanbianhao'){
              this.ruleForm.dingdanbianhao = obj[o];
              this.ro.dingdanbianhao = true;
              continue;
            }
            if(o=='minsuhao'){
              this.ruleForm.minsuhao = obj[o];
              this.ro.minsuhao = true;
              continue;
            }
            if(o=='minsumingcheng'){
              this.ruleForm.minsumingcheng = obj[o];
              this.ro.minsumingcheng = true;
              continue;
            }
            if(o=='fangjianhao'){
              this.ruleForm.fangjianhao = obj[o];
              this.ro.fangjianhao = true;
              continue;
            }
            if(o=='fangjianleixing'){
              this.ruleForm.fangjianleixing = obj[o];
              this.ro.fangjianleixing = true;
              continue;
            }
            if(o=='fangjiantupian'){
              this.ruleForm.fangjiantupian = obj[o].split(",")[0];
              this.ro.fangjiantupian = true;
              continue;
            }
            if(o=='fangjianjiage'){
              this.ruleForm.fangjianjiage = obj[o];
              this.ro.fangjianjiage = true;
              continue;
            }
            if(o=='ruzhuriqi'){
              this.ruleForm.ruzhuriqi = obj[o];
              this.ro.ruzhuriqi = true;
              continue;
            }
            if(o=='yudingtianshu'){
              this.ruleForm.yudingtianshu = obj[o];
              this.ro.yudingtianshu = true;
              continue;
            }
            if(o=='dingdanjine'){
              this.ruleForm.dingdanjine = obj[o];
              this.ro.dingdanjine = true;
              continue;
            }
            if(o=='yonghuzhanghao'){
              this.ruleForm.yonghuzhanghao = obj[o];
              this.ro.yonghuzhanghao = true;
              continue;
            }
            if(o=='yonghuxingming'){
              this.ruleForm.yonghuxingming = obj[o];
              this.ro.yonghuxingming = true;
              continue;
            }
            if(o=='shoujihaoma'){
              this.ruleForm.shoujihaoma = obj[o];
              this.ro.shoujihaoma = true;
              continue;
            }
            if(o=='ruzhushijian'){
              this.ruleForm.ruzhushijian = obj[o];
              this.ro.ruzhushijian = true;
              continue;
            }
            if(o=='ruzhuzhuangtai'){
              this.ruleForm.ruzhuzhuangtai = obj[o];
              this.ro.ruzhuzhuangtai = true;
              continue;
            }
            if(o=='crossuserid'){
              this.ruleForm.crossuserid = obj[o];
              this.ro.crossuserid = true;
              continue;
            }
            if(o=='crossrefid'){
              this.ruleForm.crossrefid = obj[o];
              this.ro.crossrefid = true;
              continue;
            }
          }
        }else if(type=='edit'){
			this.info()
		}
        // 获取用户信息
        this.$http.get(this.userTableName + '/session', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            var json = res.data.data;
            if((json.yonghuzhanghao!=''&&json.yonghuzhanghao) || json.yonghuzhanghao==0){
                this.ruleForm.yonghuzhanghao = json.yonghuzhanghao;
				this.ro.yonghuzhanghao = true;
            }
            if((json.yonghuxingming!=''&&json.yonghuxingming) || json.yonghuxingming==0){
                this.ruleForm.yonghuxingming = json.yonghuxingming;
				this.ro.yonghuxingming = true;
            }
            if((json.shoujihaoma!=''&&json.shoujihaoma) || json.shoujihaoma==0){
                this.ruleForm.shoujihaoma = json.shoujihaoma;
				this.ro.shoujihaoma = true;
            }
          }
        });
        this.ruzhuzhuangtaiOptions = "已退房,已入住".split(',')

		if (localStorage.getItem('raffleType') && localStorage.getItem('raffleType') != null) {
			localStorage.removeItem('raffleType')
			setTimeout(() => {
				this.onSubmit()
			}, 300)
		}
      },

    // 多级联动参数
      // 多级联动参数
      info() {
        this.$http.get(`ruzhuxinxi/detail/${this.$route.query.id}`, {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            this.ruleForm = res.data.data;
          }
        });
      },
      // 提交
      onSubmit() {
			//更新跨表属性
			var crossuserid;
			var crossrefid;
			var crossoptnum;
			this.$refs["ruleForm"].validate(valid => {
				if(valid) {
					if(this.type=='cross'){
						var statusColumnName = localStorage.getItem('statusColumnName');
						var statusColumnValue = localStorage.getItem('statusColumnValue');
						if(statusColumnName && statusColumnName!='') {
							var obj = JSON.parse(localStorage.getItem('crossObj'));
							if(!statusColumnName.startsWith("[")) {
								for (var o in obj){
									if(o==statusColumnName){
										obj[o] = statusColumnValue;
									}
								}
								var table = localStorage.getItem('crossTable');
								this.$http.post(table+'/update', obj).then(res => {});
							} else {
								crossuserid=Number(localStorage.getItem('frontUserid'));
								crossrefid=obj['id'];
								crossoptnum=localStorage.getItem('statusColumnName');
								crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
							}
						}
					}
					if(crossrefid && crossuserid) {
						this.ruleForm.crossuserid=crossuserid;
						this.ruleForm.crossrefid=crossrefid;
						var params = {
							page: 1,
							limit: 10,
							crossuserid:crossuserid,
							crossrefid:crossrefid,
						}
						this.$http.get('ruzhuxinxi/list', {
							params: params
						}).then(res => {
							if(res.data.data.total>=crossoptnum) {
								this.$message({
									message: localStorage.getItem('tips'),
									type: 'error',
									duration: 1500,
								});
								return false;
							} else {
								// 跨表计算


								this.$http.post(`ruzhuxinxi/${this.ruleForm.id?'update':this.centerType?'save':'add'}`, this.ruleForm).then(res => {
									if (res.data.code == 0) {
										this.$message({
											message: '操作成功',
											type: 'success',
											duration: 1500,
											onClose: () => {
												this.$router.go(-1);
											}
										});
									} else {
										this.$message({
											message: res.data.msg,
											type: 'error',
											duration: 1500
										});
									}
								});
							}
						});
					} else {


						this.$http.post(`ruzhuxinxi/${this.ruleForm.id?'update':this.centerType?'save':'add'}`, this.ruleForm).then(res => {
							if (res.data.code == 0) {
								this.$message({
									message: '操作成功',
									type: 'success',
									duration: 1500,
									onClose: () => {
										this.$router.go(-1);
									}
								});
							} else {
								this.$message({
									message: res.data.msg,
									type: 'error',
									duration: 1500
								});
							}
						});
					}
				}
			});
		},
		// 获取uuid
		getUUID () {
			return new Date().getTime();
		},
		// 返回
		back() {
			this.$router.go(-1);
		},
      fangjiantupianUploadChange(fileUrls) {
          this.ruleForm.fangjiantupian = fileUrls.replace(new RegExp(this.$config.baseUrl,"g"),"");
      },
    }
  };
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  padding: 0 10px 0 0;
	  color: #666;
	  font-weight: 500;
	  width: 180px;
	  font-size: 14px;
	  line-height: 40px;
	  text-align: right;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 180px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  border: 1px solid #ddd;
	  border-radius: 4px;
	  padding: 0 12px;
	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  outline: none;
	  color: #666;
	  background: #fff;
	  width: 400px;
	  font-size: 14px;
	  height: 40px;
	}
	.add-update-preview .el-input-number /deep/ .el-input__inner {
		text-align: left;
	  border: 1px solid #ddd;
	  border-radius: 4px;
	  padding: 0 12px;
	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  outline: none;
	  color: #666;
	  background: #fff;
	  width: 400px;
	  font-size: 14px;
	  height: 40px;
	}
	.add-update-preview .el-input-number /deep/ .el-input-number__decrease {
		display: none;
	}
	.add-update-preview .el-input-number /deep/ .el-input-number__increase {
		display: none;
	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  border: 1px solid #ddd;
	  border-radius: 4px;
	  padding: 0 10px;
	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  outline: none;
	  color: #666;
	  background: #fff;
	  width: 200px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  border: 1px solid #ddd;
	  border-radius: 4px;
	  padding: 0 10px 0 30px;
	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  outline: none;
	  color: #666;
	  background: #fff;
	  width: 200px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview /deep/ .el-upload--picture-card {
		background: transparent;
		border: 0;
		border-radius: 0;
		width: auto;
		height: auto;
		line-height: initial;
		vertical-align: middle;
	}
	
	.add-update-preview /deep/ .upload .upload-img {
	  border: 1px solid #ddd;
	  cursor: pointer;
	  border-radius: 6px;
	  color: #999;
	  background: #fff;
	  width: 200px;
	  font-size: 32px;
	  line-height: 100px;
	  text-align: center;
	  height: 100px;
	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  border: 1px solid #ddd;
	  cursor: pointer;
	  border-radius: 6px;
	  color: #999;
	  background: #fff;
	  width: 200px;
	  font-size: 32px;
	  line-height: 100px;
	  text-align: center;
	  height: 100px;
	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  border: 1px solid #ddd;
	  cursor: pointer;
	  border-radius: 6px;
	  color: #999;
	  background: #fff;
	  width: 200px;
	  font-size: 32px;
	  line-height: 100px;
	  text-align: center;
	  height: 100px;
	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  border: 1px solid #ddd;
	  border-radius: 4px;
	  padding: 12px;
	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  outline: none;
	  color: #666;
	  background: #fff;
	  width: 400px;
	  font-size: 14px;
	  height: 120px;
	}
</style>
