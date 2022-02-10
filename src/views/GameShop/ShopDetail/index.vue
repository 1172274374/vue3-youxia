<!-- @format -->

/* eslint-disable vue/no-multiple-template-root */
<template>
    <div class="bg">
        <img :src="bg" alt="" />
    </div>
    <div class="shop_box">
        <div class="shop_box_head">
            <p>{{ data.title }}</p>
            <p>
                <span v-for="(item,i) in tag" :key="i">
                    {{ item }}
                    <i v-show="i != 3">|</i>
                </span>
            </p>
        </div>
        <div class="shop_box_center">
            <div class="shop_box_center_left">
                <div class="show_pic">
                    <video
                        controls
                        muted="true"
                        autoplay
                        :src="data.video"
                        :style="{'display':pic_num==1?'block':'none'}"
                    />
                    <img
                        v-for="(item,i) in imgs"
                        :key="i"
                        :src="item"
                        :style="{'display':pic_num==i+2?'block':'none'}"
                    />
                </div>
                <div class="pic_list">
                    <span :class="{'active':pic_num == 1}" @click="changePic(1)">
                        <i>
                            <svg class="icon" aria-hidden="true">
                                <use xlink:href="#icon-bofangqi-bofang" />
                            </svg>
                        </i>
                        <img :src="video_img" alt="" />
                    </span>
                    <span v-for="(item,i) in imgs" :key="i" :class="{'active':pic_num == i+2}" @click="changePic(i+2)">
                        <img :src="item" alt="" />
                    </span>
                </div>
            </div>
            <div class="shop_box_center_right">
                <p>
                    <span>
                        <img :src="commodity[0]" alt="" />
                    </span>
                    <span>{{ commodity[1] }}</span>
                    <span>{{ commodity[2] }}</span>
                </p>
                <p>
                    <span> 游戏平台： </span>
                    <span />
                </p>
                <p>
                    <span> 数字版： </span>
                    <span>大陆版KEY</span>
                </p>
                <p>
                    <span>{{ price[0] }}</span>
                    <span>{{ price[1] }}</span>
                    <span>{{ price[2] }}</span>
                    <span>{{ price[4] }}</span>
                </p>
                <p>
                    <span @click="toPay">立即购买</span>
                    <span>加入购物车</span>
                </p>
            </div>
        </div>
        <div ref="shopDetail" class="shop_box_detail">
            <p>
                <span />
                <span>游戏介绍</span>
            </p>
            <iframe :src="'/fenghuang/leron/'+id" frameborder="0" />
            <div v-show="upORdown == 1" class="unfold" @click="ZK">展开</div>
            <div v-show="upORdown == 2" class="collapse" @click="collapse">收起</div>
        </div>

        <div class="shop_peizhi">
            <h3>
                <span />
                <span>系统配置</span>
            </h3>
            <div class="recommend">
                <ul>
                    <li>推荐配置</li>
                    <li v-for="(item,i) in recommend" :key="i">
                        <label>{{ peizhiConfig[i] }}</label
                        >{{ item }}
                    </li>
                </ul>
            </div>
            <div class="bestLow">
                <ul>
                    <li>最低配置</li>
                    <li v-for="(item,i) in bestLow" :key="i">
                        <label>{{ peizhiConfig[i] }}</label
                        >{{ item }}
                    </li>
                </ul>
            </div>
        </div>

        <div class="game_more">
            <p>
                <span />
                <span>游戏推荐</span>
                <span>MORE+</span>
            </p>
            <div>
                <ul>
                    <li v-for="(item,i) in shop_more" :key="i">
                        <a :href="'http://localhost:8081/fenghuang/'+item.id">
                            <span>
                                <img :src="item.commodity.split(',')[0]" :alt="item.title" />
                            </span>
                            <span>{{ item.title }}</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script lang="ts">
    /* 在setup中获得vue的实例 */
    import { onMounted, reactive, toRefs } from "@vue/runtime-core";
    import { useStore } from "vuex";
    import useCurrentInstance from "@/utils/useCurrentInstance";

    export default {

        setup() {
            const proxy = useCurrentInstance().proxy;
            const store = useStore();

            const state: any = reactive({
                data: [], // 主数据
                id: "", // 商品id
                bg: "", // 全局背景图片
                tag: [], // 标题下面的东西
                imgs: [], // 图片
                video_img: "", // 视频封面
                pic_num: 1, // 切换图片
                commodity: [], // 页面右边最上面的东西
                price: [], // 价格
                upORdown: 1, // 展开和收缩
                title: "", // 标题
                recommend: [], // 推荐配置
                bestLow: [], // 最低配置
                shop_more: [], // 更多游戏
                peizhiConfig: ["操作系统：", "处理器：", "内存：", "显卡：", "存储空间："]

            });

            onMounted(async() => {
                const shop_detail = await proxy.$axios.get("/Api/shopDetail", { params: { "id": proxy.$router.currentRoute.value.params.id }});

                const shop_more = await proxy.$axios.get("/Api/shopDetail", { params: { "number": 4 }});

                state.shop_more = shop_more.data;

                state.data = shop_detail.data[0];

                state.bg = state.data.commodity.split(",")[0];

                state.tag = state.data.products.split(",");

                state.imgs = state.data.img.split(",").slice(1, state.data.img.split(",").length);

                state.video_img = state.data.img.split(",").slice(state.data.img.split(",").length - 1, state.data.img.split(",").length);

                while (state.imgs.length !== 4) {
                    state.imgs.pop();
                }

                state.commodity = state.data.commodity.split(",");

                state.price = state.data.price.split(",");

                state.id = state.data.id;

                state.title = state.data.title;

                state.recommend = state.data.peizhi.split(",").slice(0, 5);
                state.bestLow = state.data.peizhi.split(",").slice(5, 10);
            });

            function changePic(val: number) {
                state.pic_num = val;
            }
            function ZK() {
                const show_detail: any = document.querySelector(".shop_box_detail");
                show_detail.style.height = "1000px";
                state.upORdown = 2;
            }

            function collapse() {
                const show_detail: any = document.querySelector(".shop_box_detail");
                show_detail.style.height = "700px";
                state.upORdown = 1;
            }

            async function toPay() {
                const date = proxy.$nowTime("curryDate", new Date()); // 通过封装的时间函数获得当前时间

                const orderId = date + "=" + state.title + "=" + store.state.user.username;
                const orderAmount = state.price[0].replace("¥", "");
                const orderTitle = state.title;

                console.log(orderTitle);

                const user = store.state.user.username;

                // //后端支付宝连接生成 PS:axios get请求参数要加params
                const URL = await proxy.$axios.post("/Api/api/payment", { "orderId": orderId, "orderAmount": orderAmount, "orderTitle": orderTitle, "user": user });

                console.log(proxy.$router);
                console.log(URL);
                window.open(URL.data.URL);
                console.log(store);
            }

            return { ...toRefs(state), changePic, ZK, collapse, toPay };
        }
    };
</script>

<style lang="less" scoped>
    @import url('../../../style/base.less');
    .bg{
        width: 100vw;
        height: 100vh;
        filter: blur(35px);
        position: fixed;
        z-index: -1px;
        left: -5%;
        top: -5%;

        img{
            width: 110%;
            height: 110%;
        }
    }
    .shop_box{
        width: 1200px;
        height: 1700px;
        filter: blur(0);
        margin: auto;

        &_head{
            width: 100%;
            height: 100px;
            // background: blue;

            p{
                line-height: 50px;

                &:nth-child(1){
                    width: 100%;
                    height: 50%;
                    // background: blueviolet;
                    font-size: 30px;
                    text-align: left;
                    color: #fff;
                    font-weight: bold;
                }
                &:nth-child(2){
                    width: 100%;
                    height: 50%;
                    // background: rgb(130, 77, 181);
                    text-align: left;

                    span{
                        font-size: 15px;
                        color: #fff;

                        &:nth-child(2n){
                            margin: 0 10px;
                        }

                        i{
                            margin-left: 10px;
                        }
                    }
                }
            }
        }

        &_center{
            width: 100%;
            height: 500px;
            // background: brown;

            &_left{
                width: 55%;
                height: 100%;
                // background: cadetblue;
                float: left;

                .show_pic{
                    width: 100%;
                    height: 372px;
                    border-radius: 10px;
                    overflow: hidden;
                    position: relative;

                    video{
                        width: 100%;
                        position: absolute;
                        top: 0;
                        left: 0;
                    }

                    img{
                        width: 100%;
                        position: absolute;
                        top: 0;
                        left: 0;
                        // background: lightgreen;
                        height: 100%;
                    }
                }

                .pic_list{
                    width: 100%;
                    height: 89px;
                    // background: lightgreen;
                    margin-top: 3%;
                    display: flex;
                    justify-content:space-between;

                    span{
                        width: 126px;
                        height: 76%;
                        border-radius: 10px;
                        margin-left: 20px;
                        display: block;
                        float: left;
                        border-radius: 10px;
                        overflow: hidden;
                        margin-top: 5px;

                        &:nth-child(1){
                            margin-left: 0;
                            position: relative;

                            i{
                                position: absolute;
                                width: 50px;
                                height: 50px;
                                top: 10%;
                                left: 30%;

                                .icon{
                                    font-size: 50px;
                                    color: #fff;
                                }
                            }
                        }

                        img{
                            width: 111%;

                        }
                    }
                    .active{
                        border: 3px solid #fa4d00;
                    }
                }
            }
            &_right{
                width: 43%;
                height: 93%;
                background: #fbfbfb;
                background-image: url('https://static.fhyx.com/images/application/pc/com/products/fhyx_products_commoditybg.png');
                background-repeat: no-repeat;
                background-position: right bottom;
                float: right;
                border-radius: 10px;
                overflow: hidden;

                p{

                    &:nth-child(1){
                        width: 100%;
                        height: 94px;
                        background: rgba(204, 204, 204, 0.33);
                        position: relative;

                        span{
                            display: block;
                            float: left;
                            text-align: left;
                            font-size: 14px;

                            &:nth-child(1){
                                width: 201px;
                                height: 100%;
                                // background: lemonchiffon;
                            }

                            &:nth-child(2){
                                width: 50%;
                                height: 30%;
                                // background: lemonchiffon;
                                position: absolute;
                                right: 10%;
                                top: 10px;
                                font-weight: bold;
                                font-size: 16px;
                            }

                            &:nth-child(3){
                                width: 50%;
                                height: 30%;
                                // background: lemonchiffon;
                                position: absolute;
                                right: 10%;
                                bottom: 10px;
                            }
                        }
                    }

                    &:nth-child(2){
                        width: 100%;
                        height: 50px;
                        // background: red;
                        margin-top: 30px;

                        span{
                            display: block;
                            float: left;

                            &:nth-child(1){
                                margin-left: 20px;
                                width: 70px;
                                height: 100%;
                                // background: lightgreen;
                                line-height: 50px;
                                font-size: 14px;
                            }
                            &:nth-child(2){
                                margin-left: 20px;
                                width: 90px;
                                height: 60%;
                                background: url('https://static.fhyx.com/images/application/pc/com/products/fhyx_detail_ui.png?1');
                                background-position: -121px -42px;
                                border: solid 1px #fa4d00;
                                border-radius: 10px;
                                margin-top: 6px;
                                cursor: pointer;
                            }
                        }
                    }

                    &:nth-child(3){
                        width: 100%;
                        height: 50px;
                        // background: red;

                        span{
                            display: block;
                            float: left;
                            text-align: left;

                            &:nth-child(1){
                                margin-left: 20px;
                                width: 80px;
                                height: 100%;
                                line-height: 50px;
                                font-size: 14px;
                                // background: lightgreen;
                            }
                            &:nth-child(2){
                                margin-left: 11px;
                                width: 90px;
                                height: 60%;
                                line-height: 30px;
                                color: #fa4d00;
                                text-align: center;
                                border: solid 1px #fa4d00;
                                border-radius: 10px;
                                margin-top: 6px;
                                cursor: pointer;
                            }
                        }
                    }

                    &:nth-child(4){
                        width: 100%;
                        height: 70px;
                        // background: red;
                        margin-top: 90px;

                        span{
                            display: block;
                            float: left;

                            &:nth-child(1){
                                width: 180px;
                                height: 100%;
                                // background: lemonchiffon;
                                line-height: 70px;
                                font-size: 43px;
                                color: #fa4d00;
                                font-weight: bold;
                            }
                            &:nth-child(2){
                                width: 90px;
                                height: 100%;
                                // background: lemonchiffon;
                                line-height: 70px;
                                text-align: left;
                                font-weight: bold;
                                color: #999999;
                                text-decoration:line-through 2px #999999;
                            }
                            &:nth-child(3){
                                width: 56px;
                                height: 40px;
                                background: #6ec449;
                                line-height: 40px;
                                border-radius: 5px;
                                margin-top: 15px;
                                color: #fff;
                            }
                            &:nth-child(4){
                                width: 56px;
                                height: 40px;
                                background: red;
                                line-height: 40px;
                                border-radius: 5px;
                                margin-top: 15px;
                                color: #fff;
                                margin-left: 10px;
                            }
                        }
                    }
                    &:nth-child(5){
                        width: 100%;
                        height: 60px;
                        // background: red;
                        margin-top: 10px;

                        span{
                            display: block;
                            float: left;
                            cursor: pointer;

                            &:nth-child(1){
                                width: 279px;
                                height: 56px;
                                border-radius: 5px;
                                font-size: 21px;
                                line-height: 56px;
                                color: #fff;
                                font-weight: bold;
                                background: linear-gradient(180deg, #fa4d00 0%, #ffa200 100%);
                                margin-left: 20px;

                            }
                            &:nth-child(2){
                                width: 164px;
                                height: 56px;
                                border-radius: 5px;
                                font-size: 21px;
                                line-height: 56px;
                                color: #fa4d00;
                                margin-left: 20px;
                                border: solid 1px #fa4d00;
                            }
                        }
                    }
                }
            }
        }
        &_detail{
            width: 63%;
            height: 700px;
            background: #fff;
            border-radius: 10px;
            overflow: hidden;
            position: relative;

            p{
                width: 100%;
                height: 30px;
                // background: red;
                margin-top: 20px;

                span{
                    display: block;
                    float: left;

                    &:nth-child(1){

                        float: left;
                        width: 6px;
                        height: 18px;
                        background: linear-gradient(180deg, #fa4d00 0%, #ffa200 100%);
                        border-radius: 6px;
                        margin-left: 20px;
                        margin-top: 5px;
                    }

                    &:nth-child(2){
                        width: 100px;
                        height: 18px;
                        text-align: left;
                        font-size: 18px;
                        font-weight: bold;
                        margin-left: 10px;
                    }
                }
            }

            iframe{
                width: 116%;
                height: 800px;
                position: absolute;
                left: -50px;
                margin-top: 30px;
            }

            .unfold{
                width: 100%;
                height: 30px;
                background: linear-gradient(180deg, rgba(255,255,255,0), rgba(255,255,255,1));
                position: absolute;
                bottom: 0;
                font-size: 14px;
                font-weight: bold;
                cursor: pointer;

                &::after{
                    content:'v';
                    position: absolute;
                    left: 52%;
                    top: 2px;
                    width: 10px;
                    height: 10px;
                }
            }
            .collapse{
                width: 100%;
                height: 30px;
                background: linear-gradient(180deg, rgba(255,255,255,0), rgba(255,255,255,1));
                position: absolute;
                bottom: 0;
                font-size: 14px;
                font-weight: bold;
                cursor: pointer;

                &::after{
                    content:'^';
                    position: absolute;
                    left: 52%;
                    top: 2px;
                    width: 10px;
                    height: 10px;
                }
            }
        }
        .shop_peizhi{
            width: 63%;
            height: 300px;
            background: #ffffff;
            margin-top: 20px;
            border-radius: 10px;
            position: relative;
            overflow: hidden;

            h3{
                width: 100%;
                height: 60px;
                background: #ffffff;

                span{
                    display: block;
                    float: left;

                    &:nth-child(1){
                        width: 6px;
                        height: 18px;
                        background: salmon;
                        border-radius: 6px;
                        margin-top: 20px;
                        margin-left: 20px;
                    }
                    &:nth-child(2){
                        width: 106px;
                        height: 100%;
                        line-height: 60px;
                        // background: salmon;
                        border-radius: 6px;
                        margin-left: 10px;
                        text-align: left;
                    }
                }
            }

            .recommend{
                position: absolute;
                width: 330px;
                height: 220px;
                // background: cadetblue;
                left: 20px;
                border: solid 1px #eeeeee;
                top: 65px;

                ul{
                    width: 100%;
                    height: 100%;
                    // background: rgb(69, 25, 25);

                    li{
                        width: 100%;
                        height: 20px;
                        overflow: hidden;
                        list-style: none;
                        text-align: left;
                        margin-top: 10px;
                        display: inline-block;
                        text-indent: 20px;
                        font-size: 15px;

                        &:nth-child(1){
                            margin-top: 0;
                            height: 30px;
                            font-size: 18px;
                            font-weight: bold;
                        }

                        label{
                            font-size: 15px;
                            color: #999999;
                        }
                    }
                }
            }

            .bestLow{
                position: absolute;
                width: 330px;
                height: 220px;
                // background: cadetblue;
                right: 20px;
                border: solid 1px #eeeeee;
                top: 65px;

                ul{
                    width: 100%;
                    height: 100%;
                    // background: rgb(69, 25, 25);

                    li{
                        width: 100%;
                        height: 20px;
                        overflow: hidden;
                        list-style: none;
                        text-align: left;
                        margin-top: 10px;
                        display: inline-block;
                        text-indent: 20px;
                        font-size: 15px;

                        &:nth-child(1){
                            margin-top: 0;
                            height: 30px;

                            font-size: 18px;
                            font-weight: bold;
                        }

                        label{
                            font-size: 15px;
                            color: #999999;
                        }
                    }
                }
            }
        }

        .game_more{
            width: 63%;
            height: 190px;
            margin-top: 20px;
            border-radius: 10px;
            overflow: hidden;
            background: #fff;

            p{

                &:nth-child(1){
                    width: 100%;
                    height: 40px;
                    position: relative;
                    margin-top: 15px;

                    span{
                        position: absolute;

                        &:nth-child(1){
                            width: 6px;
                            height: 18px;
                            border-radius: 6px;
                            background: salmon;
                            left: 20px;
                            top: 10px;
                        }
                        &:nth-child(2){
                            width: 100px;
                            height: 28px;
                            left: 35px;
                            font-size: 18px;
                            font-weight: bold;
                            text-align: left;
                            top: 5px;
                        }
                        &:nth-child(3){
                            width: 100px;
                            height: 18px;
                            right: 10px;
                            top: 10px;
                            color: #999999;
                        }

                    }

                }

            }
            div{
                width: 100%;
                height: 70%;
                // background: red;

                ul{
                    width: 95%;
                    height: 100%;
                    // background: blue;
                    display: flex;
                    justify-content: space-between;
                    align-items: center;

                    margin: auto;

                    li{
                        width: 172px;
                        height: 110px;
                        // background: #ffa200;
                        list-style: none;

                        span{
                            display: block;
                            width: 100%;

                            &:nth-child(1){
                                height: 73%;
                                // background: #fa4d00;

                                img{
                                    width: 100%;
                                }
                            }
                            &:nth-child(2){
                                height: 27%;
                                line-height: 25px;
                                font-size: 13px;
                                color: #666666;
                            }
                        }

                    }
                }
            }
        }

    }
</style>
