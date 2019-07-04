<template>
    <div class="ui_channel">
        <div class="ui_chinnel_head">
            <span class="pl-3 lb_channel_title" v-if="sex==0">男频精品</span> 
            <span class="pl-3 lb_channel_title" v-else-if="sex==1">女频精品</span>
            <span class="pl-3 lb_channel_title" v-else>出版物精品</span>
        </div>
        <div class="ui_book">
            <ul>
                <li v-for="(e,i) of items" :key="i">
                    <a :href="`#/${e.npath}`" :title="e.nname" class="ui_bookv d-flex" >
                        <div class="ui_bookv_cover">
                            <img :src="`http://127.0.0.1:3000/${e.nimg}`" :alt="e.nname">
                        </div>
                        <div class="ui_bookv_intro zw_flex">
                            <h3>{{e.nname}}</h3>
                            <p class="authorname">{{e.nauthor}}</p>
                            <p class="intro">{{e.nintro}}</p>
                        </div>
	                </a>
                </li>
            </ul>
        </div>
        <p class="ui_channel_foot">
            <a href="#" class="bt_channel_more" v-if="sex==0">进入男生频道</a>
            <a href="#" class="bt_channel_more" v-else-if="sex==1">进入女生频道</a>
            <a href="#" class="bt_channel_more" v-else>进入出版物频道</a>
        </p> 
    </div>
</template>
<script>
export default {
    data(){
        return{

        }
    },
    props:["items","sex"]
}
</script>
<style scoped>
.ui_channel{
    margin-bottom: 10px;
    padding: 0 10px;
    background: #ffffff;
}
    .ui_chinnel_head{
        width: 100%;
        border-bottom: 1px solid #f3f3f3;
        overflow: hidden;
        font-family: Helvetica, "微软雅黑";
        font-size: 14px;
        height: 42px;
        line-height: 3.0em;
    color: #333;
    }
    .ui_book>ul{
        list-style: none;
    }
    .ui_book>ul>li{
        padding: 10px 0;
    border-bottom: 1px solid #efefef;
    }
    .ui_bookv{
        width: 100%;
        overflow: hidden;
        display: block;
    }
@import"../../lib/mui/css/common.css";
.ui_booklistv ul li {
    display: block;
    padding: 10px 0;
    border-bottom: 1px solid #efefef;
}
.ui_bookv_cover {
    margin-right: 10px;
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
}

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
a{
    text-decoration: none!important;
}
a:hover{
    color: #4a4a4a!important;
}
</style>