<template>
  <div>
    <div class="head-bar zw_box">
      <a href="#" class="back" @click="getBack"></a>
      <p class="zw_flex" v-if="state">登录</p>
      <p class="zw_flex" v-else>注册</p>
      <router-link to="/" class="home"></router-link>
    </div>
    <mylogin v-if="state" :reg="state"></mylogin>
    <reg v-else :reg="state"></reg>
    <div class="reg">
      <a href="javaScript:;" @click="move(0)" v-if="state">注册</a>
      <a href="javaScript:;" @click="move(1)" v-else>登录</a>
    </div>
    <myfooter :reg="state"></myfooter>
  </div>
</template>
<script>
import reg from "./login_reg/reg";
import myfooter from "./Product/myfooter";
import mylogin from "./login_reg/login";
export default {
  data() {
      return {
          state:true
      };
  },
  components: { reg, myfooter, mylogin},
  props: ["id"],
  methods: {
      move(i){
          if(i==0){
              this.state=false;//注册
          }else{
              this.state=true;
          }
            
        },
      getBack(){
          this.$router.push("/")
      }
  },
};
</script>
<style scoped>
.reg {
  padding: 0 10px;
  font-size: 14px;
  line-height: 2em;
  color: #818485;
  background: #f3f3f3;
}
.reg a {
  padding: 0 10px;
  font-size: 14px;
  line-height: 2em;
  color: #818485;
  background: #f3f3f3;
}
.head-bar {
  width: 100%;
  background-color: #27b5d9;
  line-height: 32px;
  padding: 6px 10px 7px;
  display: -webkit-box;
}
.head-bar a.back {
  background: url("http://127.0.0.1:3000/index/ikanshu_icons_1.png") left top
    no-repeat;
  background-size: 140px auto;
  background-position: -70px -798px;
}
.head-bar a {
  display: block;
  width: 32px;
  height: 32px;
}
.head-bar p {
  font-size: 18px;
  color: #fff;
  text-align: center;
  -webkit-box-flex: 1;
}
.head-bar a.home {
  background: url("http://127.0.0.1:3000/index/ikanshu_icons_1.png") left top
    no-repeat;
  background-size: 140px auto;
  background-position: -107px -844px;
}
</style>