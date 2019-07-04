<template>
    <div class="ui_booklistv">
        <ul>
          <li v-for="(e,i) of items" :key="i">
            <a href="#" :title="e.btitle" class="ui_bookv">
              <div class="ui_bookv_cover">
                <img :src="`http://127.0.0.1:3000${e.bimg}`" :alt="e.btitle">
              </div>
              <div class="ui_bookv_intro">
                <h3>{{e.btitle}}</h3>
                <p class="authorname">{{e.author}}</p>
                <p class="intro">{{e.intro}}</p>
              </div>
            </a>
          </li>
        </ul>
      </div>
</template>
<script>
export default {
    data(){
        return{
          items:[]
        }
    },
    methods: {
        load(){
            this.axios.get("user/recommend").then(res=>{
                this.items=res.data;
            })
        }
    },
    created() {
        this.load()
    },
}
</script>
<style scoped>
@import'../../lib/mui/css/common.css';
.ui_booklistv ul li {
  display: block;
  padding: 10px 0;
  border-bottom: 1px solid #efefef;
}
.ui_booklistv{
  min-height: 300px;
}
ul {
  list-style: none;
}
.ui_bookv {
  display: block;
  width: 100%;
  overflow: hidden;
  display: flex;
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
.ui_bookv_cover {
  margin-right: 10px;
}
</style>