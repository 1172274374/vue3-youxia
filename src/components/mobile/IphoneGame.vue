<!-- @format -->

<template>
    <div class="ig">
        <div class="ig_title">
            <span></span>
            <span>手游下载</span>
            <span>+</span>
            <span>更多</span>
        </div>
        <ul>
            <p></p>
            <li>
                <span>
                    <img src="https://imgs.ali213.net/zpro/2021/06/08/2021060831344400.png" alt="" />
                </span>
                <span>原始传奇</span>
            </li>
            <li>
                <span>
                    <img src="https://imgs.ali213.net/zpro/2021/01/07/2021010743057377.jpg" alt="" />
                </span>
                <span>魔女骑士团</span>
            </li>
            <li>
                <span>
                    <img src="https://imgs.ali213.net/zpro/2021/01/07/202101074292972.jpg" alt="" />
                </span>
                <span>球王之路H5</span>
            </li>
            <li>
                <span>
                    <img src="https://imgs.ali213.net/zpro/2021/01/07/20210107105042244.jpg" alt="" />
                </span>
                <span>H5游戏排行榜</span>
            </li>
        </ul>
        <div class="recommend">
            <div class="recommend_bar">
                <span @click="changeBar(1)" :class="{'active':bar_change==1}">热门推荐</span>
                <span @click="changeBar(2)" :class="{'active':bar_change==2}">最新游戏</span>
            </div>
            <ul v-show="bar_change == 1">
                <li>
                    <p>
                        <img src="https://img1.ali213.net/shouyou/cover/b/10274925.jpg?1643598532" alt="" />
                    </p>
                    <p>PUBG NEW STATE</p>
                    <p>
                        <span>动作射击</span>
                        <span>|</span>
                        <span>1.36GB</span>
                    </p>
                    <p>下载</p>
                </li>
                <li>
                    <p>
                        <img src="https://img1.ali213.net/shouyou/cover/e/10200225.jpg?1643598532" alt="" />
                    </p>
                    <p>幻塔手游</p>
                    <p>
                        <span>角色扮演</span>
                        <span>|</span>
                        <span>1.76GB</span>
                    </p>
                    <p>下载</p>
                </li>
                <li>
                    <p>
                        <img src="https://img1.ali213.net/shouyou/cover/d/10145325.jpg?1643598532" alt="" />
                    </p>
                    <p>黑月Extend</p>
                    <p>
                        <span>动作射击</span>
                        <span>|</span>
                        <span>1.2GB</span>
                    </p>
                    <p>下载</p>
                </li>
                <li>
                    <p>
                        <img src="https://img1.ali213.net/shouyou/cover/3/10313543.jpg?1643598532" alt="" />
                    </p>
                    <p>少女前线云图计划</p>
                    <p>
                        <span>角色扮演</span>
                        <span>|</span>
                        <span>1.51GB</span>
                    </p>
                    <p>下载</p>
                </li>
                <li>
                    <p>
                        <img src="https://img1.ali213.net/shouyou/cover/0/10321687.jpg?1643598532" alt="" />
                    </p>
                    <p>金铲铲之战</p>
                    <p>
                        <span>策略游戏</span>
                        <span>|</span>
                        <span>1.5GB</span>
                    </p>
                    <p>下载</p>
                </li>
                <li>
                    <p>
                        <img src="https://img1.ali213.net/shouyou/cover/f/10266655.jpg?1643598532" alt="" />
                    </p>
                    <p>墨斗</p>
                    <p>
                        <span>街机格斗</span>
                        <span>|</span>
                        <span>270.87MB</span>
                    </p>
                    <p>下载</p>
                </li>
            </ul>
            <ul v-show="bar_change == 2">
                <li>
                    <p>
                        <img
                            src="https://img1.ali213.net/shouyou/cover/b/10389729.jpg?r=1643598531?1643598532"
                            alt=""
                        />
                    </p>
                    <p>姜饼人逃避冒险3D</p>
                    <p>
                        <span>益智游戏</span>
                        <span>|</span>
                        <span>36.20MB</span>
                    </p>
                    <p>下载</p>
                </li>
                <li>
                    <p>
                        <img
                            src="https://img1.ali213.net/shouyou/cover/9/10389727.jpg?r=1643598531?1643598532"
                            alt=""
                        />
                    </p>
                    <p>甜蜜花园爆爆乐</p>
                    <p>
                        <span>益智游戏</span>
                        <span>|</span>
                        <span>45.30MB</span>
                    </p>
                    <p>下载</p>
                </li>
                <li>
                    <p>
                        <img
                            src="https://img1.ali213.net/shouyou/cover/5/10389725.jpg?r=1643598531?1643598532"
                            alt=""
                        />
                    </p>
                    <p>消灭粘液</p>
                    <p>
                        <span>益智游戏</span>
                        <span>|</span>
                        <span>95.84MB</span>
                    </p>
                    <p>下载</p>
                </li>
                <li>
                    <p>
                        <img
                            src="https://img1.ali213.net/shouyou/cover/1/10389723.jpg?r=1643598531?1643598532"
                            alt=""
                        />
                    </p>
                    <p>蚂蚁生命模拟</p>
                    <p>
                        <span>模拟经营</span>
                        <span>|</span>
                        <span>105.00MB</span>
                    </p>
                    <p>下载</p>
                </li>
                <li>
                    <p>
                        <img
                            src="https://img1.ali213.net/shouyou/cover/3/10389721.jpg?r=1643598531?1643598532"
                            alt=""
                        />
                    </p>
                    <p>闲置采矿公司</p>
                    <p>
                        <span>模拟经营</span>
                        <span>|</span>
                        <span>51.60MB</span>
                    </p>
                    <p>下载</p>
                </li>
                <li>
                    <p>
                        <img
                            src="https://img1.ali213.net/shouyou/cover/0/10389719.jpg?r=1643598531?1643598532"
                            alt=""
                        />
                    </p>
                    <p>沉睡森林的吸血公主</p>
                    <p>
                        <span>角色扮演</span>
                        <span>|</span>
                        <span>48.20MB</span>
                    </p>
                    <p>下载</p>
                </li>
            </ul>
        </div>
    </div>
</template>

<script>
    import { reactive, toRefs } from "@vue/reactivity";
    export default {
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
    .ig{
        width: 100%;
        min-width: 425px;
        height: 900px;
        margin: auto;

        .ig_title{
            @head-iphone()
        }
        ul{
            width: 100%;
            min-width: 425px;
            height: 180px;
            display: flex;
            align-items:flex-end;
            justify-content: space-between;

            margin-top: 30px;
            position: relative;

            p{
                position: absolute;
                width: 36px;
                height: 36px;
                background: url('https://3g.ali213.net/images/qztficon.png') no-repeat center;
                background-size: 100%;
                left: 5%;
                top: 0;

                &::after{
                    content: '精品手游推荐';
                    position: absolute;
                    right: -110px;
                    top: 10px;
                    width: 100px;
                    height: 20px;
                    display: block;
                }
            }

            li{
                width: 100px;
                height: 80%;

                span{
                    display: block;
                    margin-left: 9px;

                    &:nth-child(1){
                        width: 83px;
                        height: 83px;
                        border-radius: 10px;
                        margin-top: 20px;

                        img{
                            width: 100%;
                            border-radius: 10px;
                        }
                    }

                    &:nth-child(2){
                        width: 85%;
                        height: 43px;
                        text-align: center;
                        line-height: 43px;
                        font-size: 17px;
                        overflow: hidden;
                    }
                }
            }
        }

        .recommend{
            width: 100%;
            min-width: 425px;
            height: 600px;
            margin-top: 20px;
            position: relative;


            &_bar{
                width: 300px;
                height: 40px;
                margin: auto;

                span{
                    display: inline-block;

                    &:nth-child(1){
                        font-size: 22px;
                        float: left;
                        margin-left: 35px;
                        position: relative;

                    }
                    &:nth-child(2){
                        font-size: 22px;
                        float: right;
                        margin-right: 35px;
                        position: relative;

                    }
                }

                .active{
                    font-size: 24px;
                    font-weight: bold;

                    &::after{
                        content: '';
                        width: 60px;
                        height: 8px;
                        background: #ff5a39;
                        position: absolute;
                        bottom: -10px;
                        left: 15px;
                        border-radius: 8px;
                    }
                }
            }

            ul{
                width: 100%;
                height: 560px;
                margin-top: 20px;
                display: block;
                position: absolute;


                li{
                    width: 100%;
                    height: 83px;
                    margin-top: 10px;
                    position: relative;

                    p{
                        background: none;


                        &:nth-child(1){
                            width: 83px;
                            height: 83px;
                            position: absolute;
                            left: calc(2%);
                            border-radius: 10px;

                            img{
                                width: 100%;
                                border-radius: 10px;
                            }
                        }

                        &:nth-child(2){
                            width: 223px;
                            height: 33px;
                            position: absolute;
                            left: calc(25%);
                            line-height: 33px;
                            font-size: 17px;
                            text-align: left;
                            font-weight: bold;
                        }

                        &:nth-child(3){
                            width: 223px;
                            height: 33px;
                            position: absolute;
                            left: calc(25%);
                            top: 40px;
                            line-height: 33px;
                            font-size: 17px;
                            text-align: left;
                            font-weight: bold;
                            color: #cccccc;
                            font-size: 16px;

                            span{
                                position: absolute;
                                left: 0;
                                line-height: 0;
                                margin: 0;
                                top: 50%;
                                display:table;
                                height: 20px;
                                font-weight: normal;

                                &:nth-child(2){
                                    width: 10px;
                                    top: 25%;
                                    left: 32%;
                                    font-size: 25px;
                                    line-height: 13px;
                                }

                                &:nth-child(3){
                                    left: 40%;
                                }
                            }
                        }

                        &:nth-child(4){
                            position: absolute;
                            width: 80px;
                            height: 40px;
                            background: #efefef;
                            border-radius: 40px;
                            left: 76%;
                            margin-top: 20px;
                            color: #006cff;
                            font-size: 20px;
                            line-height: 40px;
                        }

                        &::after{
                            display: none;
                        }
                    }


                }
            }
        }


    }
</style>
