<!-- @format -->

<template>
    <div class="toptontaine">
        <ul class="title">
            <li class="title1" @click="clickBox">专题推荐</li>
            <li class="title1" @click="clickBox">经典游戏</li>
            <li class="title1" @click="clickBox">热门手游</li>
            <li class="title1" @click="clickBox">火爆手游</li>
            <li class="title1" @click="clickBox">游戏销量榜</li>
        </ul>
        <div class="content">
            <ul>
                <li>
                    <p class="game_title">热门游戏</p>
                    <div class="game_all" v-for="item in data" :key="item.id">
                        <span class="game">{{item.name}}</span>
                    </div>
                </li>
                <li>
                    <p class="game_title">近期新作</p>
                    <div class="game_all" v-for="item in data1" :key="item.id">
                        <span class="game">{{item.name}}</span>
                    </div>
                </li>
                <li>
                    <p class="game_title">即将上市</p>
                    <div class="game_all" v-for="item in data2" :key="item.id">
                        <span class="game">{{item.name}}</span>
                    </div>
                </li>
                <li>
                    <p class="game_title">系列专题</p>
                    <div class="game_all" v-for="item in data3" :key="item.id">
                        <span class="game">{{item.name}}</span>
                    </div>
                </li>
                <li>
                    <p class="game_title">推荐汉化</p>
                    <div class="game_all" v-for="item in data4" :key="item.id">
                        <span class="game">{{item.name}}</span>
                    </div>
                </li>
                <li>
                    <p class="game_title">手机游戏</p>
                    <div class="game_all" v-for="item in data5" :key="item.id">
                        <span class="game">{{item.name}}</span>
                    </div>
                </li>
                <li>
                    <p class="game_title">网页游戏</p>
                    <div class="game_all" v-for="item in data6" :key="item.id">
                        <span class="game">{{item.name}}</span>
                    </div>
                </li>
            </ul>
        </div>
        <div></div>
    </div>
</template>

<script>
    import {onMounted, reactive,toRefs,onBeforeMount} from "vue";
    import {getYouXi} from "@/api/youxi_ax";
    export default {

        setup(){
            let state = reactive({
                data:[],
                data1:[],
                data2:[],
                data3:[],
                data4:[],
                data5:[],
                data6:[],
            });

            onBeforeMount(async ()=>{
                let game = await getYouXi();
                state.data = game.data.slice(0,10);
                state.data1 = game.data.slice(10,20);
                state.data2 = game.data.slice(20,30);
                state.data3 = game.data.slice(30,40);
                state.data4 = game.data.slice(40,50);
                state.data5 = game.data.slice(50,60);
                state.data6 = game.data.slice(60,70);

            });
            const clickBox = (e)=>{

                let titles = document.querySelector(".title");
                for(let i = 0;i<titles.childNodes.length;i++){

                    titles.childNodes[i].classList.remove("active");
                }
                e.srcElement.classList.add("active");


            };

            onMounted(()=>{
                let game_span = document.getElementsByClassName("game");
                console.log(game_span);
            });

            return {clickBox,...toRefs(state)};
        }
    };
</script>

<style lang="less" scoped>
    .toptontaine{
        width: 1200px;
        // background: red;
        margin: 0 auto;

        .title{
            width: 600px;
            height: 40px;
            // background: greenyellow;
            display: flex;
            justify-content: space-between;
            align-items: center;

            .title1{
                width: 20%;
                height: 100%;
                background: url('../../img/tab02_B_gray.png') no-repeat -12px center;
                line-height: 40px;
                user-select: none;
                color: #202020;
                font-size: 16px;
                font-weight: bold;
            }

            .active{
                background: url('../../img/tab02_gray.png') no-repeat -12px center;
            }
        }

        .content{
            position: absolute;
            width: 1195px;
            height: 282px;
            background: #f5f5f5;

            border-radius: 0 10px 10px 10px;

            li{
                width: 1200px;
                position: relative;
                margin-top: 14px;


                .game_title{
                    position: absolute;
                    font-size: 12px;
                    line-height: 25px;
                    left: 20px;
                    width: 70px;
                    height: 25px;
                    background: linear-gradient(48deg,
                                                #f6715f 0%,
                                                #f86c34 100%);
                    border-radius: 13px;
                    color: #fff;

                }

                .game_all{
                    width: 100px;
                    height: 20px;
                    overflow: hidden;
                    line-height: 20px;

                    display: inline-block;


                    .game{
                        display: inline-block;
                        font-size: 12px;

                        padding: 0 10px;
                        color: #2b2b2b;
                    }
                }
            }
        }
        &::after{
            content: '';
            width: 100px;
            height: 282px;
            display: block;
        }

        li{
            list-style: none;
        }
    }
</style>
