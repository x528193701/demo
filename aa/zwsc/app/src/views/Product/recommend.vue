<template>
  <div>
    <div class="ui_channel">
      <div class="ui_channel_head">
        <span class="lb_channel_title">本周主打</span>
      </div>
      <div class="ui_booklistv">
        <ul>
          <li v-for="(e,i) of items" :key="i">
            <a href="#" :title="e.htitle" class="ui_bookv">
              <div class="ui_bookv_cover">
                <img :src="`http://127.0.0.1:3000${e.himg}`" :alt="e.htitle">
              </div>
              <div class="ui_bookv_intro">
                <h3>{{e.htitle}}</h3>
                <p class="authorname">{{e.author}}</p>
                <p class="intro">{{e.intro}}</p>
              </div>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <!-- 大家都在看 -->
    <div class="ui_channel">
      <div id="uiHotBook">
        <div class="zw_title mt17">
          <span>大家都在看</span>
        </div>
        <div class="portrait-list">
          <ul class="d-flex justify-content-between" id="ulHotBook">
            <li>
              <a href="#" title="天才高手在都市">
                <div class="portrain-con">
                  <div class="zw_img">
                    <img src="https://images-pro.cread.com/book_covers/80000439.jpg" alt="天才高手在都市">
                  </div>
                  <p>天才高手在都市</p>
                </div>
              </a>
            </li>
            <li>
              <a href="#" title="极品狂医">
                <div class="portrain-con">
                  <div class="zw_img">
                    <img src="https://images-pro.cread.com/book_covers/80000441.jpg" alt="极品狂医">
                  </div>
                  <p>极品狂医</p>
                </div>
              </a>
            </li>
            <li>
              <a href="#" title="帝凰之神医弃妃">
                <div class="portrain-con">
                  <div class="zw_img">
                    <img src="https://images-pro.cread.com/book_covers/80000447.jpg" alt="帝凰之神医弃妃">
                  </div>
                  <p>帝凰之神医弃妃</p>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <p class="zw_tc">
          <span class="zw_btn" id="btHotMore">换一换</span>
        </p>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
     
    };
  },
  props:["items"]
};
</script>
<style scoped>
h3,
div,
p,
ul {
  margin: 0;
  padding: 0;
}
.ui_channel {
  display: block;
  clear: both;
  margin-bottom: 10px;
  padding: 0 10px;
  background: #ffffff;
}
.ui_channel_head {
  width: 100%;
  border-bottom: 1px solid #f3f3f3;
  overflow: hidden;
}
.zw_title span{
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
ul {
  list-style: none;
}
.ui_booklistv ul li {
  display: block;
  padding: 10px 0;
  border-bottom: 1px solid #efefef;
}
.ui_bookv {
  display: block;
  width: 100%;
  overflow: hidden;
  display: flex;
}
a {
  text-decoration: none;
  color: #4a4a4a;
  background: transparent;
}
.ui_bookv_cover {
  margin-right: 10px;
}
.ui_bookv_cover img {
  width: 80px;
  height: 115px;
}
.ui_bookv_intro {
  display: block;
  max-height: 115px;
  overflow: hidden;
}
.ui_bookv_intro h3 {
  font-size: 14px;
  line-height: 2em;
  white-space: nowrap;
  text-overflow: ellipsis;
  overflow: hidden;
}
.ui_bookv_intro .authorname {
  display: block;
  padding-left: 22px;
  text-align: left;
  font-size: 12px;
  line-height: 2em;
  color: #999;
  white-space: nowrap;
  text-overflow: ellipsis;
  overflow: hidden;
  background-image: url("http://127.0.0.1:3000/index/icon_author_1.png");
  background-position: left center;
  background-repeat: no-repeat;
  background-size: auto 16px;
}
.ui_bookv_intro .intro {
  display: block;
  padding-top: 10px;
  font-size: 12px;
  line-height: 1.5em;
  max-height: 54px;
  color: #999999;
  overflow: hidden;
}
.zw_title {
    font-size: 14px;
    border-bottom: 1px solid #f3f3f3;
}
.portrait-list ul {
    padding: 5px 0;
    overflow: hidden;
}
.portrait-list li {
    text-align: center;
    padding: 5px 0;
}
.portrain-con {
    width: 93px;
}
.portrait-list .zw_img img {
    width: 93px;
    height: 134px;
}
#ulHotBook a{
    display: block;
}
.portrait-list li p {
    font-size: 14px;
    color: #2f2f2f;
    line-height: 2.0em;
    margin-top: 8px!important;
    text-align: center;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}
.zw_tc {
    text-align: center;
}
.zw_btn {
    display: block;
    color: #27b5d9;
    font-size: 16px;
    line-height: 3.0em;
    text-align: center;
    border-top: 1px solid #f3f3f3;
    background-color: transparent;
}
</style>