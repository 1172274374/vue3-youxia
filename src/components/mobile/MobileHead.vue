<!-- @format -->

<template>
    <div class="mobile_head">
        <div class="mobile_head_left">
            <span>
                <img src="https://3g.ali213.net/images/head_icon.png" alt="" />
            </span>
            <span>游侠网</span>
            <span>攻略资讯一手掌握</span>
        </div>
        <div class="mobile_head_right">
            <p @click="change_menu">
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-daohang"></use>
                </svg>
            </p>
            <p>获取APP</p>
        </div>
        <div class="mobile_head_menu" v-show="show_menu == 1">
            <div>
                <form action="" method="get">
                    <input type="text" placeholder="在此输入关键词" />
                    <input type="submit" value=" " />
                </form>
            </div>
            <ul>
                <li>
                    <span>
                        <img src="https://3g.ali213.net/images/head_home.png" alt="" />
                    </span>
                    <span>首页</span>
                </li>
                <li>
                    <span>
                        <img src="https://3g.ali213.net/images/head_news.png" alt="" />
                    </span>
                    <span>资讯</span>
                </li>
                <li>
                    <span>
                        <img src="https://3g.ali213.net/images/head_zt.png" alt="" />
                    </span>
                    <span>专题</span>
                </li>
                <li>
                    <span>
                        <img src="https://3g.ali213.net/images/head_gl.png" alt="" />
                    </span>
                    <span>攻略</span>
                </li>
                <li>
                    <span>
                        <img src="https://3g.ali213.net/images/head_video.png" alt="" />
                    </span>
                    <span>视频</span>
                </li>
                <li>
                    <span>
                        <img src="https://3g.ali213.net/images/head_down.png" alt="" />
                    </span>
                    <span>下载</span>
                </li>
                <li>
                    <span>
                        <img src="https://3g.ali213.net/images/head_mob.png" alt="" />
                    </span>
                    <span>手游</span>
                </li>
                <li>
                    <span>
                        <img src="https://3g.ali213.net/images/head_shop.png" alt="" />
                    </span>
                    <span>商城</span>
                </li>
            </ul>
        </div>
    </div>
    <div class="zhuti">
        <ul>
            <li>首页</li>
            <li>资讯</li>
            <li>专题</li>
            <li>手游</li>
            <li>攻略</li>
            <li>商城</li>
            <li>下载</li>
            <li>新报</li>
            <li>论坛</li>
            <li>硬件</li>
            <li>图库</li>
            <li>视频</li>
        </ul>
    </div>
    <div class="carousel">
        <el-carousel height="161px">
            <el-carousel-item>
                <img src="https://imgs.ali213.net/IndexTJ/2022/01/28/2022012812429755.png" alt="" />
            </el-carousel-item>
            <el-carousel-item>
                <img src="https://imgs.ali213.net/IndexTJ/2022/01/28/2022012812348601.png" alt="" />
            </el-carousel-item>
            <el-carousel-item>
                <img src="https://imgs.ali213.net/IndexTJ/2022/01/28/2022012812305897.png" alt="" />
            </el-carousel-item>
            <el-carousel-item>
                <img src="https://imgs.ali213.net/IndexTJ/2022/01/28/2022012812236127.png" alt="" />
            </el-carousel-item>
        </el-carousel>
    </div>
    <div class="headlines">
        <div class="today_headline">
            <span>
                <img src="https://3g.ali213.net/images/v1/mg35.png" alt="" />
            </span>
            <span>宫崎英高谈老头环</span>
            <span>Epic喜加一</span>
        </div>
        <ul>
            <li>
                <span>要闻</span>
                <span>暴雪最新生存大作已开发接近5年： 获得一致称赞！</span>
            </li>
            <li>
                <span>焦点</span>
                <span>旧主机也能畅玩！《消逝的光芒2》ps4/xb1实机演示</span>
            </li>
            <li>
                <span>视频</span>
                <span>《地平线2：西部禁域》PS4 Pro实机 新场景太美</span>
            </li>
        </ul>
    </div>
    <ToggleBar :zhixun="zhixun" :zhuanti="zhuanti" :pingche="pingche" />
    <IphoneGame />
    <HotGame :Game="game" />
    <Stragegy :stragegy="stragegy" />
    <GameList />
    <IphoneBottom @changeValue="ran" />
</template>

<script>
    import { reactive, toRefs } from "@vue/reactivity";
    import { onMounted } from "@vue/runtime-core";
    import ToggleBar from "./ToggleBar.vue";
    import {getZhiXun,getIntroduction} from "../../api/youxi_ax";
    import IphoneGame from "./IphoneGame.vue";
    import HotGame from "./HotGame.vue";
    import Stragegy from "./Stragegy.vue";
    import GameList from "./GameList.vue";
    import IphoneBottom from "./IphoneBottom.vue";
    export default {
        components:{
            ToggleBar,IphoneGame,HotGame,Stragegy,GameList,IphoneBottom
        },

        setup(){

            let state = reactive({
                show_menu:0,
                zhixun:[],
                zhuanti:[],
                pingche:[],
                game:[],
                stragegy:[],
                emit_test:""
            });

            onMounted( async ()=>{
                let zhixun = await getZhiXun(1);
                let zhuanti = await getZhiXun(2);
                let pingche = await getZhiXun(3);
                let youxi = await getIntroduction(20);
                let stragegy = await getZhiXun(4);
                state.zhixun = zhixun.data;
                state.zhuanti = zhuanti.data;
                state.pingche = pingche.data;
                state.stragegy = stragegy.data;
                state.game = youxi.data;

                console.log(state);

            });

            function change_menu() {

                if(state.show_menu == 0){
                    state.show_menu = 1;
                }else{
                    state.show_menu = 0;
                }
            }

            function ran(data) {
                // console.log(data);
                state.emit_test = data;

                console.log(state);
            }



            return {...toRefs(state),change_menu,ran};
        }
    };
</script>

<style lang="less" scoped>
    .mobile_head{
        width: 100%;
        min-width: 425px;
        height: 50px;
        background: rgb(255, 255, 255);
        position: fixed;
        display: block;
        z-index: 999;
        top: 0;

        &_left{
            width: 40%;
            height: 100%;
            float: left;
            position: relative;

            span{
                position: absolute;
                display: block;

                &:nth-child(1){
                    width: 26px;
                    height: 26px;
                    top: 10px;
                    left: 10px;

                    img{
                        width: 100%;
                    }
                }

                &:nth-child(2){
                    font-size: 14px;
                    font-weight: bold;
                    left: 44px;
                    top: 5px;
                }
                &:nth-child(3){
                    font-size: 12px;
                    left: 44px;
                    top: 23px;
                    color: #858585;
                }
            }
        }

        &_right{
            width: 40%;
            height: 100%;
            float: right;
            position: relative;

            p{
                position: absolute;
                z-index: 999;

                &:nth-child(1){
                    width: 28px;
                    height: 28px;
                    right: 10px;
                    top: 10px;

                    .icon{
                        font-size: 28px;
                    }
                }

                &:nth-child(2){
                    width: 58px;
                    height: 24px;
                    background: linear-gradient(30deg, #ff4800 0%, #ff7800 100%);
                    left: 0;
                    right: 0;
                    top: 10px;
                    border-radius: 18px;
                    color: #fff;
                    font-size: 13px;
                    line-height: 24px;

                }

            }
        }

        &_menu{
            position: absolute;
            width: 100%;
            height: 248px;
            background: #fff;
            bottom: -250px;
            border-radius: 0 0 10px 10px;
            box-shadow: 1px 1px 2px rgba(151, 152, 154, 0.489);
            z-index: 999;

            div{
                width: 100%;
                height: 40%;
                position: relative;

                input{

                    &:nth-child(1){
                        width: 80%;
                        height: 38px;
                        background: #f2f2f2;
                        border-radius: 36px;
                        text-indent: 15px;
                        position: absolute;
                        top: 25%;
                        left: 10%;
                    }

                    &:nth-child(2){
                        width: 25px;
                        height: 41px;
                        background: url('https://3g.ali213.net/images/head_search.png') no-repeat center;
                        border-radius: 36px;
                        background-size: 100%;
                        position: absolute;
                        top: 23%;
                        right: 14%;
                    }
                }

            }

            ul{
                width: 100%;
                height: 60%;
                border-radius: 0 0 10px 10px;

                li{
                    width: 20%;
                    height: 50px;
                    margin-left: 4%;
                    float: left;
                    margin-top: 10px;
                    position: relative;

                    span{
                        display: block;
                        position: absolute;

                        &:nth-child(1){
                            width: 25px;
                            height: 25px;
                            left: 40%;

                            img{
                                width: 100%;
                            }
                        }

                        &:nth-child(2){
                            position: absolute;
                            height: 20px;
                            left: 39%;
                            bottom: 0;
                            font-size: 14px;
                            color: #595959;
                        }

                    }

                    &:nth-child(7){
                        span{
                            img{
                                width: 80%;
                            }
                        }
                    }
                }
            }


        }

        &::after{
            content: '';
            width: 100%;
            height: 5px;
            position: absolute;
            bottom: 0;
            left: 0;
            background: linear-gradient(to bottom, rgba(255, 255, 255, 0.6) 0%, #eee 100%);
        }
    }

    .zhuti{
        width: 100%;
        min-width: 425px;
        height: 45px;
        overflow: hidden;
        position: relative;
        margin-top: 50px;


        ul{
            width: 100%;
            height: 119%;
            overflow-x: scroll;
            overflow-y: hidden;
            white-space: nowrap;
            position: absolute;
            bottom: -9px;

            li{
                display: inline-block;
                width: 20%;
                height: 100%;
                line-height: 40px;


                &:nth-child(1){
                    font-weight: bold;
                    position: relative;

                    &::after{
                        content: '';
                        position: absolute;
                        top: 24px;
                        left: calc(50% - 20px);
                        width: 40px;
                        height: 10px;
                        border-radius: 10px;
                        background: #ff5a39b6;
                    }
                }
            }
        }
    }

    .carousel{
        width: 100%;
        min-width: 425px;
        margin: auto;
    }

    .headlines{
        width: 100%;
        min-width: 425px;
        height: 150px;
        // background: red;

        .today_headline{
            width: 100%;
            height: 50px;
            // background: chartreuse;
            position: relative;
            margin-top: 10px;

            span{
                display: block;
                font-size: 14px;
                text-align: left;

                &:nth-child(1){
                    width: 45px;
                    height: 45px;
                    position: absolute;
                    left: calc(15% - 20px);
                    top: 10px;
                }
                &:nth-child(2){
                    height: 22px;
                    position: absolute;
                    left: calc(29% - 20px);
                    top: 10px;
                    line-height: 22px;
                }
                &:nth-child(3){
                    height: 22px;
                    position: absolute;
                    left: calc(29% - 20px);
                    top: 30px;
                    line-height: 22px;
                }
            }
        }

        ul{
            width: 100%;
            height: 80px;
            margin-top: 30px;

            li{
                width: 100%;
                height: 22px;
                margin-top: 5px;
                position: relative;

                span{
                    display: inline-block;
                    position: absolute;
                    font-size: 14px;


                    &:nth-child(1){
                        width: 35px;
                        height: 17px;
                        left: calc(10% - 20px);
                        border: solid 1px #ff8439;
                        color: #ff8439;
                        font-size: 12px;
                        font-weight: bold;
                    }

                    &:nth-child(2){
                        width: 80%;
                        height: 17px;
                        right: calc(10% - 20px);
                        text-align: left;
                        overflow: hidden;
                    }
                }
            }
        }
    }

    img{
        width: 100%;
    }
</style>
