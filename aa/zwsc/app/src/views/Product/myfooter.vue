<template>
  <div class="ui_page_foot">
    <div class="footer-top zw_box d-flex justify-content-between">
      <p class="zw_flex">
        <router-link to="/"><span>首页</span></router-link>&gt;
        <a href="#"><span>个人中心</span></a>&gt;
        <a href="#">
          <span v-if="reg">登录</span>
          <span v-else>注册</span>
        </a>
      </p>
      <a href="#">
        <b>回顶部</b>
      </a>
    </div>
    <div class="footer">
      <nav class="zw_nav d-flex justify-content-between">
        <a href="#" v-for="(e,i) of nav" :key="i" class="w-100">
          <span>{{e}}</span>
        </a>
      </nav>
      <div class="f-help zw_tc">
        <a href="#" v-for="(e,i) of help" :key="i">
          <span>{{e}}</span>
        </a>|
        <a href="#">
          <span></span>
        </a>
      </div>
    </div>
    <div class="f-download zw_tc">
      <a href="#">
        <span>客户端下载</span>
      </a>
    </div>
    <div class="ui_copyright">
      <span>Copyright m.cread.com All Rights Reserved</span>
      <br>
      <span>京ICP证151110号 京ICP备15043009号 -2</span>
      <br>
      <span>新出网许（京）(2018) 4751-390 号</span>
      <br>
      <span>京公网安备11010102003159号</span>
      <img src border="0" alt width="0" height="0">
      <img src border="0" alt width="0" height="0">
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
        nav:["首页","聊天","分类","排行","搜索","书架"],
        help:["帮助中心","联系客服","反馈意见","网站地图"]
    };
  },
  props:["reg"]
};
</script>
<style scoped>
@import"../../lib/mui/css/common.css";
.footer-top span {
    color: #27b5d9;
    padding: 0 3px;
}
.footer-top p {
    padding-left: 10px;
}
.ui_page_foot {
    display: block;
    background: #ffffff;
    overflow: hidden;
}
.footer-top {
    width: 100%;
    color: #27b5d9;
    padding-top: 10px;
}
.footer-top b{
    background:url("http://127.0.0.1:3000/index/ikanshu_icons_1.png") right top no-repeat;
    background-size: 140px auto;
    background-position: 40px -530px;
    color: #27b5d9;
    border: 1px solid #27b5d9;
    border-radius: 2px;
    padding: 4px;
    padding-right: 26px;
}
.footer-top>a {
    height: 26px;
    margin-right: 10px;
}
.footer .zw_nav {
    background-color: #27b5d9;
    margin-top: 4px;
    padding: 0 5px;
    box-sizing: border-box;
}
.footer .zw_nav a {
    font-size: 16px;
    line-height: 25px;
    text-align: center;
    padding: 0 5px;
}
.zw_nav a span {
    display: block;
    padding: 9px 0 6px;
    color: #fff;
}
.f-help {
    margin-top: 8px;
    font-size: 12px;
    color: #8d8c8c;
    text-align: center;
}
.f-help a span {
    color: #8d8c8c;
    padding: 0 6px;
}
.f-download {
    display: block;
    padding: 10px 0;
    text-align: center;
}
.f-download span {
    color: #27b5d9;
    text-decoration: underline;
    background: url("http://127.0.0.1:3000/index/ikanshu_icons_1.png") left top no-repeat;
    background-size: 140px auto;
    background-position: -114px -441px;
    padding-left: 21px;
}
.ui_copyright {
    display: block;
    margin: 0 10px;
    padding: 10px 0;
    border-top: 1px solid #dfdfdf;
    font-size: 12px;
    line-height: 1.5em;
    color: #999;
    text-align: center;
    overflow: hidden;
}
</style>