<!-- @format -->

//长图片的模板，图片数据通过父组件props传入

<template>
    <div class="box">
        <img :src="src" alt="" />
    </div>
</template>

<script>
    import {reactive, toRefs } from "@vue/runtime-core";

    export default {
        props:["src"], //数据
        setup(props){
            let state = reactive({
                src:props.src
            });


            return {...toRefs(state)};
        }
    };
</script>

<style lang="less" scoped>

    .box{
        width: 1200px;
        height: 100px;
        margin: 25px auto;
        border-radius: 10px;
        overflow: hidden;

        img{
            width: 100%;
            transition: all .3s;
        }

        &:hover{
            img{
                transform: scale(1.1);
            }
        }
    }
</style>
