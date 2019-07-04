<template>
    <div>
        <div class="head-bar zw_box">
            <a href="javascript:history.back();" class="back"></a>
            <p class="zw_flex">{{title}}</p>
            <router-link to="/" class="home"></router-link>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            
        }
    },
    props:["title"]
}
</script>
<style scoped>
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