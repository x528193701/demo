<template>
    <div class="ui_booklistv" style="min-height:300px;">
    <ul id="ulList">
      <li class="zw_box" v-for="(e,i) of arry" :key="i">
        <a class="ui_bookv" href="#">
          <div class="ui_bookv_cover">
            <img :src="`http://127.0.0.1:3000${e.rimg}`" :alt="e.title">
          </div>
          <div class="ui_bookv_intro">
            <h3>{{e.title}}</h3>
            <p class="authorname">更新时间：{{e.updatetime}}</p>
            <p class="intro">已读：{{e.section}}</p>
          </div>
        </a>
        <div>
          <a @click="removeBookmark(e.rid);">
            <span class="bt_bookv_delete">删除</span>
          </a>
        </div>
      </li>
    </ul>
  </div>
</template>
<script>
export default {
    data(){
        return{
            arry:[]
        }
    },
    methods: {
        load(){
            this.axios.get("user/collect").then(res=>{
                this.arry=res.data;
            })
        }
    },
    created() {
        this.load();
    },
}
</script>
<style scoped>
    @import'../../lib/mui/css/common.css';
.ui_booklistv ul li {
    display: flex;
    padding: 10px 0;
    border-bottom: 1px solid #efefef;
}
.ui_bookv_cover img {
    width: 80px;
    height: 115px;
}
.ui_bookv_cover {
    margin-right: 10px;
}
.ui_bookv{
  display: flex;
  flex-grow: 1;
}
.ui_bookv_intro {
    display: block;
    max-height: 115px;
    overflow: hidden;
    flex-grow: 1;
}
.ui_bookv_intro h3 {
    font-size: 14px;
    line-height: 2.0em;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
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
.bt_bookv_delete {
    display: inline-block;
    padding: 0 10px;
    border-radius: 6px;
    border: 1px solid #27b5d9;
    font-size: 14px;
    line-height: 3.0em;
    color: #27b5d9;
    white-space: nowrap;
}
</style>