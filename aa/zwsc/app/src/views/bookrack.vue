<template>
  <div>
    <myheader :title="title"></myheader>
    <div class="ui_channel">
      <div class="ui_tabs_btn">
        <ul class="zw_box">
          <li :class="check==i?'cur':''" v-for="(e,i) of nav" :key="i" @click="sel(i)">
            <a href="javaScript:;">
              <span>{{e}}</span>
            </a>
          </li>
        </ul>
        <!-- 最近阅读 -->
        <allread :allread="allread" v-if="check==0"></allread>
        <!-- 我的收藏 -->
        <collect v-else-if="check==1"></collect>
        <!-- 热书推荐 -->
        <recommend v-else></recommend>
      </div>
    </div>
    <myfooter :title="title"></myfooter>
  </div>
</template>
<script>
import myheader from "./common/myheader";
import myfooter from "./common/myfooter";
import allread from "./bookrack/allread"
import collect from './bookrack/collect';
import recommend from "./bookrack/recommend"
export default {
  data() {
    return {
      title: "我的书架",
      nav:["最近阅读","我的收藏","热书推荐"],
      check:0,
      allread:[],//阅读记录
    };
  },
  components: { myheader, myfooter,allread ,collect,recommend},
  created() {
    this.load();
  },
  methods: {
    load(){
          this.axios.get("user/read").then(res=>{
          this.allread=res.data;
      })
    },
    sel(i){
      this.check=i;
    }
  },
};
</script>
<style scoped>
@import"../lib/mui/css/common.css";
.ui_channel {
    display: block;
    clear: both;
    margin-bottom: 10px;
    padding: 0 10px;
    background: #ffffff;
}
.ui_tabs_btn {
    display: block;
    border-bottom: 1px solid #f3f3f3;
}
.zw_box{
    display: flex;
}
.ui_tabs_btn ul li.cur {
    border-bottom: 2px solid #27b5d9;
}
.ui_tabs_btn ul li {
    text-align: center;
    width: 100%;
}
.ui_tabs_btn ul li span {
    display: inline-block;
    padding: 0 10px;
    font-size: 14px;
    line-height: 3.0em;
    color: #27b5d9;
    text-align: center;
}
</style>