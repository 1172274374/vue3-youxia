<!-- @format -->

<template>
    <div class="iphone_bottom">
        <span></span>
        <span></span>
        <span><router-link to="/youxia">客户端</router-link></span>
        <span></span>
        <span @click="toHead">回到顶部</span>
    </div>
</template>

<script>
    import { reactive, toRefs } from "@vue/reactivity";
    import mainMixin from "../../mixins/MainMixin";
    import { onMounted } from "@vue/runtime-core";

    export default {
        mixins:[mainMixin],
        setup(){

            let state = reactive({

            });


            onMounted(async ()=>{
                const data = mainMixin.setup();

                console.log(data.name.value);
            });
            return {...toRefs(state)};
        },
        methods:{
            //测试子传父 $emit
            submit(){
                this.$emit("changeValue","子传父");
            },
            toHead(){
                document.documentElement.scrollTop = 0;
            }
        }
    };
</script>

<style lang="less" scoped>
    .iphone_bottom{
        width: 100%;
        height: 50px;
        min-width: 425px;
        // background: red;
        position: relative;
        line-height: 50px;
        font-size: 14px;

        span{
            position: absolute;
            display: block;

            &:nth-child(1){
                width: 100px;
                height: 100%;
                background: url('https://3g.ali213.net/images/v1/mg12.png') no-repeat center;
                left: 0;
                background-size: 100%;
            }
            &:nth-child(2){
                width: 26px;
                height: 72%;
                background: url('https://3g.ali213.net/images/v1/mg43.png') no-repeat center;
                left: calc(50% - 13px);
                background-size: 100%;
                margin-top: 5px;
            }
            &:nth-child(3){
                width: 100px;
                height: 100%;
                left:calc(51% - 13px);
                background-size: 100%;
                color: #666;
            }

            &:nth-child(4){
                width: 26px;
                height: 72%;
                background: url('https://3g.ali213.net/images/v1/mg43.png') no-repeat center;
                left: calc(80% - 13px);
                background-size: 100%;
                margin-top: 5px;
            }
            &:nth-child(5){
                width: 100px;
                height: 100%;
                left: calc(80%);
                background-size: 100%;
                color: #666;
            }
        }
    }
</style>
