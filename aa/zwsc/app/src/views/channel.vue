<template>
    <div>
        <myheader :title="title[cid]"></myheader>
        <recommend :cid="cid" v-if="cid!=4"></recommend>
        <myfooter :title="title[cid]"></myfooter>
    </div>
</template>
<script>
import myheader from "./common/myheader"
import recommend from "./common/recommend"
import myfooter from "./common/myfooter"
export default {
    data(){
        return{
            title:["男生频道","女生频道","出版频道","分类","搜索"],
            cid:""
        }
    },
    components:{myheader,myfooter,recommend},
    created() {
        this.cid=this.$route.params.cid
    },
}
</script>
<style scoped>
    
</style>