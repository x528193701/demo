<template>
  <div>
    <div class="ui_channel" v-if="items.length>0">
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
            <li v-for="(e,i) of rest" :key="i">
              <a href="#" :title="e.rtitle">
                <div class="portrain-con">
                  <div class="zw_img">
                    <img :src="`http://127.0.0.1:3000${e.rimg}`" :alt="e.rtitle">
                  </div>
                  <p>{{e.rtitle}}</p>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <p class="zw_tc">
          <span class="zw_btn" @click="getOther">换一换</span>
        </p>
      </div>
    </div>
    <!-- 热门推荐 -->
    <div class="ui_channel" v-if="recom.length>0">
      <div class="ui_channel_head">
        <span class="lb_channel_title">热门推荐</span>
      </div>
      <div class="ui_booklistv">
        <ul>
          <li v-for="(e,i) of recom" :key="i">
            <a href="#" :title="e.rtitle" class="ui_bookv">
              <div class="ui_bookv_cover">
                <img :src="`http://127.0.0.1:3000${e.rimg}`" :alt="e.rtitle">
              </div>
              <div class="ui_bookv_intro">
                <h3>{{e.rtitle}}</h3>
                <p class="authorname">{{e.author}}</p>
                <p class="intro">{{e.intro}}</p>
              </div>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <!-- 最近上架 -->
     <div class="ui_channel" v-if="putaway.length>0">
      <div class="ui_channel_head">
        <span class="lb_channel_title">最近上架</span>
      </div>
      <div class="ui_booklistv">
        <ul>
          <li v-for="(e,i) of putaway" :key="i">
            <a href="#" :title="e.ptitle" class="ui_bookv">
              <div class="ui_bookv_cover">
                <img :src="`http://127.0.0.1:3000${e.pimg}`" :alt="e.ptitle">
              </div>
              <div class="ui_bookv_intro">
                <h3>{{e.ptitle}}</h3>
                <p class="authorname">{{e.author}}</p>
                <p class="intro">{{e.intro}}</p>
              </div>
            </a>
          </li>
        </ul>
        <p class="ui_channel_foot">
            <router-link to="" class="bt_channel_more">更多出版频道图书</router-link>
        </p>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
        items:[],
        rest:[],
        count:0,
        allcount:"",
        recom:[],
        putaway:[]
    };
  },
  created() {
      this.load()
  },
  methods: {
      getOther(){
          if(this.count!=this.allcount){
                this.count=this.count+3;
          }else{
                this.count=0;
          }
          this.load()
      },
      load(){
          var cid=this.$route.params.cid
            this.axios.get("channel/man/"+cid).then(res=>{
            this.items=res.data.hotspot;
            var rest=res.data.rest;
            this.rest=rest.slice(this.count,this.count+3);
            this.allcount=rest.length-3;
            this.recom=res.data.recom;
        })
        this.axios.get("channel/putaway/"+cid).then(res=>{
            this.putaway=res.data;
        })
      }
  },
};
</script>
<style scoped>
.ui_channel_foot {
    display: block;
    border-top: 1px solid #efefef;
}
.bt_channel_more {
    display: block;
    font-size: 14px;
    line-height: 3.0em;
    color: #27b5d9;
    text-align: center;
}
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
  max-height: 64px;
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