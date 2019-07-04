<template>
    <div class="ui_slider">
        <ul class="list-unstyled d-flex" :style="margin_L">
            <li v-for="(e,i) of items" :key="i">
                <div class="ui_item">
                    <a href="#">
                        <img :src="`http://127.0.0.1:3000/${e.cimg}`" alt="">
                    </a>
                </div>
            </li>
            <li>
                <div class="ui_item">
                    <a href="#">
                        <img v-if="item.length>0" :src="`http://127.0.0.1:3000/${item}`" alt="">
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
            bok:0,
            margin_L:{
                "left": "0px",
                "transition":"all 1.5s linear"
            },
            item:"",
        }
    },
    props:{
        items:{default:""}
    },
    mounted() {
        var move=()=>{
            this.bok++;
            this.margin_L.left=`${-414*this.bok}px`
            if(this.bok==this.items.length+1){
                //  setTimeout(()=>{
                    this.margin_L.transition="";
                    this.margin_L.left="0px";
                    this.bok=0;
                    setTimeout(()=>{
                        this.margin_L.transition="all 1.5s linear";
                    },100) 
                //  },300)
            }
            // console.log(this.bok,this.items.length)
            // this.margin_L.transform=`translate(${-414*this.bok}px)`
            // if(this.bok==this.items.length){
            //     setTimeout(()=>{
            //         this.margin_L.transition="";
            //         this.margin_L.transform="translate(0px)";
            //         this.bok=0;
            //         setTimeout(()=>{
            //             this.margin_L.transition="all 1.5s linear";
            //         },100)
            //     },100)
        }
        var t=setInterval(move,2000)    
    },
    watch: {
        bok(){ 
            if(this.bok==0){
                setInterval(this.move,2000)
            }     
        },
        items(i){
            this.item=i[0].cimg;
        }
    }
}
</script>
<style scoped>
.ui_slider li{
    width:100%;
    background: #000;
}
    .ui_slider{
        position: relative;
        overflow: hidden; 
        top: 0;
        left: 0;
        width: 100%;
        height: 104px;
    }
    .ui_slider>ul{
        position:relative;
    }
    .ui_item a{
        display: inline-block;
    }
    .ui_item img{
        width:100%;
        width:414px;
    }
    .ui_item{
        display: block;
        text-align: center;
        width:100%;
    }
    /* .ui_slider li:first-child{
        margin-left:-100px; 
    } */
</style>