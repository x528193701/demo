// 阅读记录
<template>
  <div class="ui_channel">
    <div class="ui_channel_head">
      <span class="lb_channel_title">最近阅读</span>
      <span class="lb_channel_more">
        <a href="/user/mybookmark.aspx">&gt;&gt;我的书架(更新1)</a>
      </span>
    </div>
    <div class="ui_booklistv">
      <ul>
        <li :class="e.bupdate==1?'sign_update':''" v-for="(e,i) of items" :key="i">
          <a href="#" class="ui_bookv">
            <div class="ui_bookv_intro">
              <h3>{{e.btitle}}</h3>
              <p class="chaptername">{{e.section}}</p>
            </div>
          </a>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {};
  },
  props:["items"]
};
</script>
<style scoped>
.ui_channel{
	display:block;
	clear:both;
	margin-bottom:10px;
	padding:0 10px;
	background:#ffffff;
	}
    .ui_channel_head{
	display:flex;
    justify-content: space-between;
	width:100%;
	border-bottom:1px solid #f3f3f3;
	overflow:hidden;
	}
    .lb_channel_title{
	display:block;
	padding-left:15px;
	height:42px;
	font-size:14px;line-height:3.0em;color:#333;
	background:url("") no-repeat;
	background-size:140px auto;
	background-position:-122px -642px;
	overflow:hidden;
	}
    .lb_channel_more{
	font-size:16px;line-height:3.0em;color:#333;
	text-align:right;
    line-height: 3.0em;
    color: #333;
    text-align: right;
	}
    a {
    text-decoration: none;
    color: #4a4a4a;
    background: transparent;
    font-size:14px; 
    }  
    ul{
    list-style: none;
    padding: 0;
} 
.ui_booklistv ul li {
    display: block;
    padding: 10px 0;
    border-bottom: 1px solid #efefef;
}
.sign_update {
    background: url("http://127.0.0.1:3000/index/icon_sign_update.png") right top no-repeat;
    background-size: 40px auto;
}
.ui_bookv_intro h3 {
    font-size: 14px;
    line-height: 2.0em;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
    margin: 0;
}
.ui_bookv_intro .chaptername {
    display: block;
    text-align: left;
    font-size: 12px;
    line-height: 2.0em;
    color: #999;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
    margin: 0;
}
.ui_bookh {
    display: inline-block;
    width: 90px;
    text-align: center;
    overflow: hidden;
}
.ui_bookh_cover {
    text-align: center;
}
.ui_bookh_cover img {
    width: 90px;
    height: 136px;
}
.lb_bookh_bookname {
    font-size: 14px;
    line-height: 2.0em;
    color: #666;
    text-align: center;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}
.ui_booklisth li{
    padding: 0;
}
.ui_booklisth  ul{
    flex-wrap: wrap;
    justify-content: space-between;
}
.ui_bookh_cover img {
    width: 90px;
    height: 136px;
}
.lb_channel_title {
  background: url("http://127.0.0.1:3000/index/ikanshu_icons_1.png") no-repeat;
  display: block;
  padding-left: 15px;
  height: 42px;
  font-size: 14px;
  line-height: 3em;
  color: #333;
  background-position: -122px -642px;
  background-size: 140px auto;
}
</style>