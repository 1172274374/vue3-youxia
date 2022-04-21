<!-- @format -->

<template>
    <div class="main">
        <Nav :username="username" :vip="isvip" />
        <IndexHead />
        <TopContainer />
        <!-- layout模板传入图片 -->
        <LongImg src="https://pbmp.ali213.net/Pics/2022/index_tl1528_1200c100.jpg" />
        <Content />
        <div class="game_video">
            <div class="game_video_left">
                <GameVideo />
            </div>
            <div class="game_video_right">
                <Highlights />
            </div>
        </div>
        <LongImg src="https://pbmp.ali213.net/Pics/2022/index_tl2529_1200c100.jpg" />
        <RecentBlockBusters :blockbusters="blockbusters" :newgame="newGame1" :newgame1="newGame2" :buyGames="buyGame" />
        <el-backtop />
        <LongImg src="https://pbmp.ali213.net/Pics/2022/index_tl3530_1200c100.jpg" />
    </div>
    <div class="bottom">
        <webBottom />
    </div>
    <div :class="['close',{'isFixed':isFixed == true}]" @click="headleClose">
        <svg class="icon" aria-hidden="true">
            <use xlink:href="#icon-close"></use>
        </svg>
    </div>

    <div class="main_bg"></div>
</template>

<script>
    import Nav from "../components/home/nav.vue";
    import IndexHead from "../components/home/IndexHead.vue";
    import TopContainer from "../components/home/TopContainer.vue";
    import Content from "../components/home/content.vue";
    import GameVideo from "../components/home/GameVideo/index.vue";
    import Highlights from "../components/home/Highlights/index.vue";
    import LongImg from "../../src/layout/LongImg.vue";
    import RecentBlockBusters from "../layout/RecentBlockBusters/index.vue";
    import webBottom from "../components/webBottom/index.vue";
    import { useStore } from "vuex";
    import { reactive, toRefs } from "@vue/reactivity";
    import { onMounted } from "@vue/runtime-core";


    import {getBusters,getNewGame,getBuyGame} from "../api/youxi_ax";

    export default {
        name:"游侠网",

        components:{
            Nav,IndexHead,TopContainer,Content,GameVideo,Highlights,
            LongImg,RecentBlockBusters,webBottom
        },
        data() {
            return {
                blockbusters:[],
                newGame1:[],
                newGame2:[],
                buyGame:[]
            };
        },
        async beforeMount(){
            let  data = await getBusters();
            data = data.data;

            let new_game = await getNewGame();
            let new_game1 = new_game.data.slice(0,4);
            let new_game2 = new_game.data.slice(4,6);

            let buy_game = await getBuyGame();
            this.$data.buyGame = buy_game.data;

            this.$data.blockbusters = data;
            this.$data.newGame1 = new_game1;
            this.$data.newGame2 = new_game2;


        },
        setup(){
            let store = useStore();
            let state = reactive({
                username:"",
                isvip:"",
                isFixed:false

            });


            onMounted(()=>{

                state.username = store._state.data.username;
                state.isvip = store._state.data.isVip;

                window.addEventListener("scroll",headleScroll);

                console.log(store);

            });

            // 监听滚动事件
            function headleScroll(){
                let scrollTop = window.scrollY || document.documentElement.scrollTop || document.body.scrollTop;

                // let offsetTop = document.querySelector('.close').offsetTop
                if(scrollTop > 60){
                    state.isFixed = true;
                }else if(scrollTop <= 60){
                    state.isFixed = false;
                }
            }

            function headleClose(e){
                e.target.style.display = "none";
                document.querySelector(".close").style.background = "none";
                document.querySelector(".main_bg").style.background = "none";

            }


            return {...toRefs(state),headleClose};
        }
    };
</script>

<style lang="less" scoped>
    .main{
      min-width: 1200px;

      .game_video{
          width: 1200px;
          height: 440px;
          margin: 30px auto;
          position: relative;

          &_left{
            width: 370px;
            height: 440px;
            float: left;
            margin-top: -28px;
          }

          &_right{
            width: 810px;
            height: 100%;
            float: left;
            margin-left: 20px;
            margin-top: -28px;
          }
      }

      li{
        list-style: none;
      }
    }

    .bottom{
      min-width: 1200px;
      height: 736px;
      background: #333333;

      li{
        list-style: none;
      }
    }
    .close{
      position: absolute;
      width: 20px;
      height: 20px;
      background: rgb(229, 226, 226);
      top: 60px;
      right: 0;
    }

    .main_bg{
      width: 100vw;
      height: 100vh;
      position: fixed;
      z-index: -1;
      background: url('https://pbmp.ali213.net/Pics/2022/index_bj527_bg_1920c1080.jpg') no-repeat center;
      top: 0;
    }

    .isFixed{
      position: fixed;
      top: 0;
      right: 0;
    }
</style>
