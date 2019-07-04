<template>
  <div>
    <!-- 错误提示 -->
        <div v-if="reg" class="ui_description" :class="code==-1?'':'d-none'">
            <p class="lb_description">密码错误</p>
        </div>
        <div v-else class="ui_description" :class="code==-1?'':'d-none'">
            <p class="lb_description">手机号错误</p>
        </div>
    <div>
      <div class="ui_field">
        <div class="title">帐号</div>
        <div class="input zw_flex">
          <input type="text" placeholder="请输入帐号或手机号" v-model="uname">
        </div>
      </div>
      <div class="ui_field">
        <div class="title">密码</div>
        <div class="input zw_flex">
          <input type="password" placeholder="请输入您的密码" v-model="upwd">
        </div>
      </div>
      <div class="ui_field">
        <input
          type="submit"
          v-if="reg"
          value="登录"
          class="bt_submit bt_submit_blue zw_flex"
          @click="submit(reg)"
        >
        <input
          type="submit"
          v-else
          value="注册"
          class="bt_submit bt_submit_blue zw_flex"
          @click="submit(reg)"
        >
      </div>
    </div>
  </div>
</template>
<script>
import Qs from "../../../node_modules/qs/dist/qs";
export default {
  data() {
    return {
      uname: "",
      upwd: "",
      code:""
    };
  },
  props: ["reg"],
  methods: {
    submit(i) {
      if (!i) {
        //注册
        this.axios
          .post(
            "user/reg",
            Qs.stringify({ uname: this.uname, upwd: this.upwd })
          )
          .then(res => {
            var data=eval('('+res.data+')');
            console.log(data.code)
            this.code=data.code
            if(data.code==1){
              this.$router.go(0);
            }
          });
      }else{
        console.log(this.uname,this.upwd)
        var uname=this.uname;
        var upwd=this.upwd;
        this.axios.get(`user/login/${uname}&${upwd}`).then(res=>{
          if(res.data.code==1){
            sessionStorage.setItem("uname",uname)
              this.$router.push("/")
            }else{
              this.code=res.data.code
            }
          })
      }
    }
  }
};
</script>
<style scoped>
   .lb_description {
    font-size: 14px;
    line-height: 2.0em;
    color: #ff0000;
    text-align: center;
}
.ui_field {
  display: -webkit-box;
  margin-top: 10px;
  padding: 0 10px;
  overflow: hidden;
}
.ui_field .title {
  display: block;
  padding-right: 10px;
  font-size: 14px;
  line-height: 36px;
  color: #666;
  text-align: right;
  white-space: nowrap;
  overflow: hidden;
}
.ui_field .input {
  display: block;
  height: 36px;
  border: 1px solid #27b5d9;
  border-radius: 5px;
  overflow: hidden;
  -webkit-box-flex: 1;
}
.ui_field .input input {
  margin: 0;
  padding: 11px 10px;
  width: 100%;
  border: none;
  font-size: 14px;
  line-height: 1em;
  background: transparent;
  color: #4a4a4a;
}
input::-webkit-input-placeholder {
  color: #bdb6c6;
}
ui_field {
  display: -webkit-box;
  margin-top: 10px;
  padding: 0 10px;
  overflow: hidden;
}
.bt_submit_blue {
  background: #27b5d9;
  color: #fff;
}
.bt_submit {
  display: block;
  margin: 10px 0;
  padding: 0 10px;
  border: 1px solid #27b5d9;
  border-radius: 5px;
  font-size: 16px;
  line-height: 2em;
  text-align: center;
  -webkit-box-flex: 1;
}
</style>