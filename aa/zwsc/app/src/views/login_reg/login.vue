<template>
    <div>
        <div class="ui_channel">
            <!-- 账户密码 -->
            <myinput :reg="reg"></myinput>
            <div class="ui_morelogin"><span class="title">其他第三方登录</span></div>
            <div class="ui_morelogin_list">
                <a href="#"><span class="ic_qqlogin">QQ登录</span></a>
                <a href="#"><span class="ic_weixinlogin">微信登录</span></a>
                <a href="#"><span class="ic_taobaologin">淘宝登录</span></a>
            </div>
        </div>
    </div>
</template>
<script>
import myinput from "./input"
export default {
    name:"login",
    data(){
        return{

        }
    },
    components:{myinput},
    props:["reg"]
}
</script>
<style scoped>

.ui_channel {
    padding: 10px 10px;
    background: #ffffff;
    margin-bottom: 10px;
}
.ui_morelogin {
    display: block;
    margin-top: 10px;
    text-align: center;
    background: url('../../assets/img/login/wread_icon_point1.png') left center repeat-x;
    overflow: hidden;
}
.ui_morelogin .title {
    padding: 0 10px;
    font-size: 14px;
    line-height: 2.0em;
    color: #818485;
    background: #f3f3f3;
}
.ui_morelogin_list {
    display: block;
    margin: 10px 0px;
    text-align: center;
    overflow: hidden;
}
.ic_qqlogin ,.ic_weixinlogin,.ic_taobaologin{
    display: inline-block;
    margin-right: 9px;
    padding-left: 26px;
    padding-right: 6px;
    border-radius: 6px;
    height: 32px;
    font-size: 14px;
    line-height: 32px;
    color: #fff;    
    overflow: hidden;
}
.ic_qqlogin {
    background: #23adeb url('../../assets/img/login/ikanshu_login_qq.png') left center no-repeat;
    background-size: 26px 26px;
    }
.ic_weixinlogin{
    background: #27b5d9 url('../../assets/img/login/ikanshu_login_weixin.png') left center no-repeat;
    background-size: 26px 26px;
}
.ic_taobaologin{
    background: #fd7801 url('../../assets/img/login/ikanshu_login_taobao.png') left center no-repeat;
    background-size: 26px 26px;
}
</style>