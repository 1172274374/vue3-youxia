<!-- @format -->

<template>
    <div class="stragegy">
        <div class="stragegy_head">
            <span></span>
            <span>攻略推荐</span>
            <span>+</span>
            <span>更多</span>
        </div>
        <div class="stragegy_bar">
            <span @click="changeBar(1)" :class="{'active':bar_change==1}">热门推荐</span>
            <span @click="changeBar(2)" :class="{'active':bar_change==2}">最新游戏</span>
        </div>
        <div class="stragegy_content">
            <ul v-show="bar_change == 1">
                <li v-for="(item,i) in stragegy.slice(0,10)" :key="i">
                    <span></span>
                    <span>{{item.title}}</span>
                    <span>01-31</span>
                </li>
            </ul>
            <ul v-show="bar_change == 2">
                <li v-for="(item,i) in stragegy.slice(10,20)" :key="i">
                    <span></span>
                    <span>{{item.title}}</span>
                    <span>01-31</span>
                </li>
            </ul>
        </div>
        <div class="more">查看更多精品攻略</div>
    </div>
</template>

<script>
    import { reactive, toRefs } from "@vue/reactivity";
    export default {
        props: {                //通过父组件传过来的对象直接渲染模板
            stragegy: {
                type: Array,
                required: true
            }
        },
        setup(){
            let state = reactive({
                bar_change:1
            });

            function changeBar(val) {
                state.bar_change = val;
            }

            return {...toRefs(state),changeBar};
        }
    };
</script>

<style lang="less" scoped>
    @import url('../../style/base.less');
        .stragegy{
            width: 100%;
            min-width: 425px;
            height: 500px;
            // background: red;

            &_head{
                @head-iphone()
            }

            &_bar{
                @head-iphone-bar()
            }

            &_content{
                width: 100%;
                height: 350px;
                margin-top: 20px;
                position: relative;

                ul{
                    width: 100%;
                    height: 100%;
                    top: 0;
                    position: absolute;

                    li{
                        display: block;
                        width: 100%;
                        height: 23px;
                        // background: lightblue;
                        margin-top: 10px;

                        span{
                            float: left;
                            height: 100%;

                            &:nth-child(1){
                                width: 5px;
                                height: 5px;
                                background: rgb(177, 177, 176);
                                margin-top: 10px;
                                margin-left: 15px;
                            }

                            &:nth-child(2){
                                font-size: 16px;
                                width: 70%;
                                overflow: hidden;
                                text-align: left;
                                margin-left: 20px;

                            }
                            &:nth-child(3){
                                float: right;
                                color: rgb(199, 196, 196);
                                margin-right: 20px;
                                margin-top: 3px;
                            }
                        }
                    }
                }
            }

            .more{
                @bottom-iphone-more()
            }
        }
</style>
