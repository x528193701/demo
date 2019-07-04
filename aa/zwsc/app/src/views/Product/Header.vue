<template>
  <div>
    <div class="header">
      <div class="zw_box head_top d-flex justify-content-between">
        <div class="zw_flex">
          <img :src="src_l" class="logo" alt>
        </div>
        <div>
          <a href="javaScript:;" class="bt_home_login pr-1" @click="login" v-if="uname==null">登录</a>
          <div v-else>
            <a href="javaScript:;" class="bt_home_login pr-1">欢迎回来{{uname}}</a>
            <a href="javaScript:;" class="bt_home_login pr-1" @click="loginout">退出</a>
          </div>
        </div>
      </div>
      <!-- 导航栏 -->
      <nav class="d-flex justify-content-around zw_nav">
        <router-link :to="nav[i]" v-for="(e,i) of msg[0]" :key="i">
          <span class="w-100">{{e}}</span>
        </router-link>
      </nav>
    </div>
    <div class="menu d-flex justify-content-around">
        <router-link :to="`/channel/${i}`" v-for="(e,i) of msg[1]" :key="i">
          <span>{{e}}</span>
        </router-link>
    </div>
  </div>
</template>
<script>
export default {
  name: "Header",
  data() {
    return {
      nav:["/","/","/","/","/bookrack"]
    };
  },
  props: {
    src_l: { default: "" },
    msg: { default: "" },
    uname:{default:""}
  },
  methods: {
    login(){
      this.$router.push("login")
    },
    loginout(){
      if(this.uname){
        // sessionStorage.removeItem("uname");
        // this.$router.go(0);
        this.axios.get("user/loginout").then(res=>{
          if(res.data.code==1){
            sessionStorage.removeItem("uname");
            this.$router.go(0);
          }
        })
      }
    }
  },
};
</script>
<style scoped>
.header {
  color: #fff;
  background-color: #27b5d9;
}
.logo {
  width: 32px;
  width: 117px;
}
.head_top {
  font-size: 12px;
  line-height: 17px;
  padding: 7px 11px 0 10px;
}
.bt_home_login {
  display: inline-block;
  font-size: 14px;
  line-height: 32px;
}
.header a {
  color: #fff;
}
.zw_nav a:not(:last-child) {
  background: url("../../assets/img/product/point.jpg") no-repeat right center;
  background-size: 1px 12px;
}
.zw_nav a {
  width: 80.8px;
  text-align: center;
  padding: 8px;
  font-size: 16px;
}
.zw_nav {
  margin-top: 4px;
  padding: 0 5px;
}
.menu router-link{
    text-align: center;
    padding: 9px 0 6px;
    color: #4a4a4a;
    line-height: 25px;
}
.menu{
    background-color: #e6e6e6;
    border-bottom: 1px solid #b8b8b8;
}
.menu  span {
    display: block;
    padding: 9px 0 6px;
    font-size: 16px;
}
</style>