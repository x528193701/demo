<template>
    <div>
        <myinput :reg="reg"></myinput>
    </div>
</template>
<script>
import myinput from "./input"
export default {
    data(){
        return{

        }
    },
    props:["reg"],
    components:{myinput}
}
</script>
<style scoped>
 
</style>