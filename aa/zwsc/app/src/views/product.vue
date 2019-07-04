<template>
  <div class="index">
    <myheader :src_l="`http://127.0.0.1:3000/${xt}`" :msg="msg" :uname="uname"></myheader>
    <mycarousel :items="items"></mycarousel>
    <!-- 最近阅读 -->
    <record :items="bookrack"></record>
    <!-- 本周主打 -->
    <recommend :items="hotspot"></recommend>
    <!-- 热门推荐 -->
    <div class="ui_channel">
      <div class="ui_channel_head">
        <span class="lb_channel_title">热门推荐</span>
      </div>
      <div class="ui_booklisth">
        <ul class="d-flex">
          <li v-for="(e,i) of rcd" :key="i" :class="i==1?'mrl':''">
            <a href="#" :title="e.rname" class="ui_bookh">
              <div class="ui_bookh_cover">
                <img :src="`http://127.0.0.1:3000${e.rimg}`" :alt="e.rname">
              </div>
              <p class="lb_bookh_bookname">{{e.rname}}</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="ui_recommendbar">
      <ul class="ul_recommend">
        <li v-for="(e,i) of recommend" :key="i">
          <a class="ui_recommend" href="#">
            <div>
              <h5 class="title">{{e.title}}</h5>
              <p class="desc">{{e.introduce}}</p>
            </div>
            <p class="logo">
              <img :src="`http://127.0.0.1:3000/index/${e.rimg}`" alt>
            </p>
          </a>
        </li>
      </ul>
    </div>
    <pn :items="ngenre" :sex="n"></pn>
    <pn :items="wgenre" :sex="w"></pn>
    <pn :items="publish" :sex="p"></pn>
    <myfooter></myfooter>
  </div>
</template>
<script>
import myheader from "./Product/Header";
import mycarousel from "./Product/Carousel";
import pn from "./Product/Pn.vue";
import record from "./Product/record";
import recommend from "./Product/recommend";
import myfooter from "./Product/myfooter"
export default {
  data() {
    return {
      xt: "logo.png",
      msg: [
        ["免费", "聊天", "排行", "充值", "书架"],
        ["男生", "女生", "出版", "分类", "搜书"]
      ],
      items: "",
      ngenre: "",
      wgenre: "",
      publish: "",
      n:0,
      w:1,
      p:2,
      recommend:[{rimg:"60557244.jpg",title:"完本畅读",introduce:"防坑防太监"},                      {rimg:"80000573.jpg",title:"名家经典",introduce:"大神有保障"},
                 {rimg:"80001644.jpg",title:"新书入库",introduce:"新鲜抢先看"},
                 {rimg:"60452022.jpg",title:"发现好书",introduce:"小编来推荐"}],
      rcd:[],
      hotspot:[],
      bookrack:[],
      uname:""
    };
  },
  components: { myheader, mycarousel, pn, record, recommend,myfooter},
  created() {
    this.uname=sessionStorage.getItem("uname")
    this.axios.get("product/carousel").then(res => {
      this.items = res.data;
    });
      this.axios.get("product/content").then(res => {
        this.publish = res.data.publish;
        this.ngenre = res.data.ngenre;
        this.wgenre = res.data.wgenre;
      });
  this.axios.get("product/recommend").then(res=>{
      this.rcd=res.data;
    });
  this.axios.get("product/hotspot").then(res=>{
    this.hotspot=res.data.hotspot;
    this.bookrack=res.data.bookrack;
  })
  }
};
</script>
<style scoped>
h3,
div,
p,
ul,h5 {
  margin: 0;
  padding: 0;
}
ul {
  list-style: none;
}
.mrl{
  margin: 0px 48px 0px 48px;
}
a {
  text-decoration: none;
  color: #4a4a4a;
  background: transparent;
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
  line-height: 2em;
  color: #666;
  text-align: center;
  white-space: nowrap;
  text-overflow: ellipsis;
  overflow: hidden;
}
.ui_booklisth li {
  padding: 0;
}
.ui_booklisth ul {
  flex-wrap: wrap;
  justify-content: space-between;
}
.index {
  background: #f3f3f3;
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
.ui_recommendbar {
    display: block;
    margin-bottom: 10px;
    padding: 5px;
    background: #ffffff;
    overflow: hidden;
}
.ul_recommend li {
    display: inline-block;
    width: 50%;
}
.ul_recommend li:nth-child(1) .ui_recommend {
    background: #ffefdf;
}
.ul_recommend li:nth-child(2) .ui_recommend {
    background: #ffdccf;
}
.ul_recommend li:nth-child(3) .ui_recommend {
    background: #f1f1f2;
}
.ul_recommend li:nth-child(4) .ui_recommend {
    background: #dfefff;
}
.ui_recommend .title {
    display: block;
    font-size: 16px;
    line-height: 1.5em;
    color: #333;
    text-align: center;
}
.ui_recommend .desc {
    font-size: 12px;
    line-height: 1.5em;
    color: #999;
    text-align: center;
}
.ui_recommend .logo {
    padding: 0 5px;
}
.ui_recommend .logo img {
    width: 50px;
    height: 72px;
    box-shadow: 0px 3px 4px rgba(102,102,102,0.398);
}
.ui_recommend{
    display: block;
    display: flex;
    justify-content: space-between;
    margin: 5px;
    padding: 10px;
    border-radius: 8px;
    }
    .ui_recommend div{
        text-align: center;
        flex-grow: 1;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }
</style>