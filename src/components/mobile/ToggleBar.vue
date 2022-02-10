<!-- @format -->

<template>
    <div class="toggleInfo">
        <div class="bar">
            <span @click="change_title" id="one" :class="{'active':info_show==1}">资讯</span>
            <span @click="change_title" id="two" :class="{'active':info_show==2}">专测</span>
            <span @click="change_title" id="three" :class="{'active':info_show==3}">评测</span>
        </div>
        <div class="toggleInfo_zhixun">
            <ul v-show="info_show == 1">
                <li v-for="(item,i) in zhixun.slice(num,num+10)" :key="i">
                    <p>
                        <img :src="item.img" alt="" />
                    </p>
                    <p>{{item.title}}</p>
                    <p>
                        <span> {{i+1}}分钟以前 </span>
                        <span>
                            <svg class="icon" aria-hidden="true">
                                <use xlink:href="#icon-xiaoxi"></use>
                            </svg>
                            {{Math.ceil(Math.random() * 100)}}
                        </span>
                    </p>
                </li>
            </ul>
            <ul v-show="info_show == 2">
                <li v-for="(item,i) in zhuanti.slice(num,num+10)" :key="i">
                    <p>
                        <img :src="item.img" alt="" />
                    </p>
                    <p>{{item.title}}</p>
                    <p>
                        <span> {{i+1}}分钟以前 </span>
                        <span>
                            <svg class="icon" aria-hidden="true">
                                <use xlink:href="#icon-xiaoxi"></use>
                            </svg>
                            {{Math.ceil(Math.random() * 100)}}
                        </span>
                    </p>
                </li>
            </ul>
            <ul v-show="info_show == 3">
                <li v-for="(item,i) in pingche.slice(num,num+10)" :key="i">
                    <p>
                        <img :src="item.img" alt="" />
                    </p>
                    <p>{{item.title}}</p>
                    <p>
                        <span> {{i+1}}分钟以前 </span>
                        <span>
                            <svg class="icon" aria-hidden="true">
                                <use xlink:href="#icon-xiaoxi"></use>
                            </svg>
                            {{Math.ceil(Math.random() * 100)}}
                        </span>
                    </p>
                </li>
            </ul>
        </div>
        <div class="more">查看更多精彩资讯</div>
    </div>
</template>

<script>
    import { reactive, toRefs } from "@vue/reactivity";
    export default {
        props: {                //通过父组件传过来的对象直接渲染模板
            zhixun: {
                type: Array,
                required: true
            },
            zhuanti: {
                type: Array,
                required: true
            },
            pingche: {
                type: Array,
                required: true
            }
        },
        setup(){

            let state = reactive({
                info_show:1,
                num:Math.floor(Math.random() * 16)
            });

            function change_title(e) {
                let val = e.target.id == "one"?"1": e.target.id == "two"?"2" : e.target.id == "three"? "3":"";
                state.info_show = val;
            }

            return {...toRefs(state),change_title};
        }
    };
</script>

<style lang="less" scoped>
    .toggleInfo{
        width: 100%;
        min-height: 858px;
        min-width: 425px;
        // background: rgb(30, 28, 28);
        margin-top: 40px;

        .bar{
            width: 95%;
            height: 50px;
            margin: auto;
            border-bottom: 1px solid #ccc;
            position: relative;

            span{
                display: inline-block;
                font-size: 22px;
                position: absolute;
                line-height: 23px;
                top: 19px;



                &:nth-child(1){
                    left: calc(16%);
                }

                &:nth-child(2){
                    left: calc(45%);
                }

                &:nth-child(3){
                    left: calc(74%);
                }
            }

            .active{
                font-weight: bold;

                &::after{
                    position: absolute;
                    content: '';
                    width: 100%;
                    height: 5px;
                    background: #ff5a39;
                    bottom: -10px;
                    left: 0;
                    border-radius: 5px;
                    display: block;
                }
            }
        }

        &_zhixun{
            width: 100%;
            min-height: 1097px;
            margin-top: 10px;
            position: relative;

            ul{
                position: absolute;
                width: 96%;
                left: 10px;
                min-height: 797px;
                top: 0;

                li{
                    width: 100%;
                    height: 100px;
                    margin-top: 10px;
                    position: relative;

                    p{
                        position: absolute;

                        &:nth-child(1){
                            width: 127px;
                            height: 85px;
                            background: crimson;
                            left: 0;
                            top: 7px;
                            border-radius: 10px;
                            overflow: hidden;
                        }

                        &:nth-child(2){
                            width: 60%;
                            height: 45px;
                            left: calc(40% - 25px);
                            top: 7px;
                            text-align: left;
                            color: #545454;

                        }
                        &:nth-child(3){
                            width: 60%;
                            height: 15px;
                            left: calc(40% - 25px);
                            top: 70px;
                            text-align: left;

                            span{
                                font-size: 15px;
                                color: #a6a6a6;

                                &:nth-child(1){
                                    float: left;
                                }
                                &:nth-child(2){
                                    float: right;

                                    .icon{
                                        font-size: 17px;
                                    }
                                }
                            }

                        }
                    }
                }
            }
        }

        .more{
            width:50%;
            height: 40px;
            margin: 20px auto;
            border-radius: 20px;
            line-height: 40px;
            border: solid 1px #ff8439;
            color: #ff8439;
        }
    }
    img{
        width: 100%;
    }
</style>
