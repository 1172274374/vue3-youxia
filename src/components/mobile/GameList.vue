<!-- @format -->

<template>
    <div class="game_list">
        <div class="list_bar">
            <span :class="{'active':list_change==1}" @click="changeList(1)">游戏榜</span>
            <span :class="{'active':list_change==2}" @click="changeList(2)">销量榜</span>
        </div>
        <div class="list_game" v-show="list_change == 1">
            <div class="list_game_bar">
                <span :class="{'active':list_game_change == 1}" @click="changeGameList(1)">新游期待榜</span>
                <span :class="{'active':list_game_change == 2}" @click="changeGameList(2)">新游人气榜</span>
            </div>
            <div class="expect_game" v-show="list_game_change == 1">
                <ul>
                    <li>
                        <p></p>
                        <p>1</p>
                        <p>
                            <img src="https://imgs.ali213.net/oday/uploadfile/2021/06/11/2021061113653712.jpg" alt="" />
                        </p>
                        <p>
                            <span>艾尔登法环</span>
                            <span>角色扮演RPG</span>
                            <span>期待值</span>
                            <span>44155</span>
                        </p>
                        <p>
                            <span>专区</span>
                            <span>论坛</span>
                        </p>
                    </li>
                    <li>
                        <p></p>
                        <p>2</p>
                        <p>
                            <img src="https://imgs.ali213.net/oday/uploadfile/2020/03/11/2020031144355226.jpg" alt="" />
                        </p>
                        <p>
                            <span>消逝的光芒2</span>
                            <span>动作游戏ACT</span>
                            <span>期待值</span>
                            <span>34085</span>
                        </p>
                        <p>
                            <span>专区</span>
                            <span>论坛</span>
                        </p>
                    </li>
                    <li>
                        <p></p>
                        <p>3</p>
                        <p>
                            <img src="https://imgs.ali213.net/oday/uploadfile/2021/02/04/2021020493441268.jpg" alt="" />
                        </p>
                        <p>
                            <span>全面战争：战锤3</span>
                            <span>策略战棋SLG</span>
                            <span>期待值</span>
                            <span>19100</span>
                        </p>
                        <p>
                            <span>专区</span>
                            <span>论坛</span>
                        </p>
                    </li>
                </ul>
                <ul>
                    <li>
                        <span></span>
                        <span>4</span>
                        <span>拳皇15</span>
                        <span>期待值</span>
                        <span>10911</span>
                    </li>
                    <li>
                        <span></span>
                        <span>5</span>
                        <span>上古卷轴6</span>
                        <span>期待值</span>
                        <span>10911</span>
                    </li>
                    <li>
                        <span></span>
                        <span>6</span>
                        <span>生化危机4：重制版</span>
                        <span>期待值</span>
                        <span>10911</span>
                    </li>
                    <li>
                        <span></span>
                        <span>7</span>
                        <span>穿越火线X</span>
                        <span>期待值</span>
                        <span>10911</span>
                    </li>
                    <li>
                        <span></span>
                        <span>8</span>
                        <span>最终幻想：起源</span>
                        <span>期待值</span>
                        <span>10911</span>
                    </li>
                    <li>
                        <span></span>
                        <span>9</span>
                        <span>双女成行</span>
                        <span>期待值</span>
                        <span>10911</span>
                    </li>
                    <li>
                        <span></span>
                        <span>10</span>
                        <span>师父</span>
                        <span>期待值</span>
                        <span>10911</span>
                    </li>
                </ul>
            </div>
            <div class="expect_game" v-show="list_game_change == 2">
                <ul>
                    <li>
                        <p></p>
                        <p>1</p>
                        <p>
                            <img src="https://imgs.ali213.net/oday/uploadfile/2021/12/16/2021121645430671.jpg" alt="" />
                        </p>
                        <p>
                            <span>最终幻想7：重制版</span>
                            <span>角色扮演RPG</span>
                            <span>期待值</span>
                            <span>3711175</span>
                        </p>
                        <p>
                            <span>专区</span>
                            <span>论坛</span>
                        </p>
                    </li>
                    <li>
                        <p></p>
                        <p>2</p>
                        <p>
                            <img src="https://imgs.ali213.net/oday/uploadfile/2021/08/05/2021080511390389.jpg" alt="" />
                        </p>
                        <p>
                            <span>暖雪</span>
                            <span>角色扮演RPG</span>
                            <span>期待值</span>
                            <span>717943</span>
                        </p>
                        <p>
                            <span>专区</span>
                            <span>论坛</span>
                        </p>
                    </li>
                    <li>
                        <p></p>
                        <p>3</p>
                        <p>
                            <img src="https://imgs.ali213.net/oday/uploadfile/2021/10/21/2021102191217104.jpg" alt="" />
                        </p>
                        <p>
                            <span>战神4</span>
                            <span>动作游戏ACT</span>
                            <span>期待值</span>
                            <span>562167</span>
                        </p>
                        <p>
                            <span>专区</span>
                            <span>论坛</span>
                        </p>
                    </li>
                </ul>
                <ul>
                    <li>
                        <span></span>
                        <span>4</span>
                        <span>严阵以待</span>
                        <span>期待值</span>
                        <span>10911</span>
                    </li>
                    <li>
                        <span></span>
                        <span>5</span>
                        <span>怪物猎人：崛起</span>
                        <span>期待值</span>
                        <span>10911</span>
                    </li>
                    <li>
                        <span></span>
                        <span>6</span>
                        <span>嗜血印</span>
                        <span>期待值</span>
                        <span>10911</span>
                    </li>
                    <li>
                        <span></span>
                        <span>7</span>
                        <span>极限竞速：地平线5</span>
                        <span>期待值</span>
                        <span>10911</span>
                    </li>
                    <li>
                        <span></span>
                        <span>8</span>
                        <span>吸血鬼幸存者</span>
                        <span>期待值</span>
                        <span>10911</span>
                    </li>
                    <li>
                        <span></span>
                        <span>9</span>
                        <span>魔镜2</span>
                        <span>期待值</span>
                        <span>10911</span>
                    </li>
                    <li>
                        <span></span>
                        <span>10</span>
                        <span>网吧模拟器2</span>
                        <span>期待值</span>
                        <span>10911</span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="list_num" v-show="list_change == 2">
            <ul>
                <li>
                    <p>
                        <span>2022年</span>
                        <span>1月第4期</span>
                    </p>
                    <p>
                        <span>1.战神4</span>
                        <span>2.怪物猎人：崛起</span>
                        <span>3.消逝的光芒2</span>
                    </p>
                    <p>
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-aixin"></use>
                        </svg>
                    </p>
                </li>
                <li>
                    <p>
                        <span>2022年</span>
                        <span>1月第3期</span>
                    </p>
                    <p>
                        <span>1.战神4</span>
                        <span>2.怪物猎人：崛起</span>
                        <span>3.严阵以待</span>
                    </p>
                    <p>
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-aixin"></use>
                        </svg>
                    </p>
                </li>
                <li>
                    <p>
                        <span>2022年</span>
                        <span>1月第2期</span>
                    </p>
                    <p>
                        <span>1.战神4</span>
                        <span>2.怪物猎人：崛起</span>
                        <span>3.消逝的光芒2</span>
                    </p>
                    <p>
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-aixin"></use>
                        </svg>
                    </p>
                </li>
                <li>
                    <p>
                        <span>2022年</span>
                        <span>1月第1期</span>
                    </p>
                    <p>
                        <span>1.严阵以待</span>
                        <span>2.双人成行</span>
                        <span>3.怪物猎人：崛起</span>
                    </p>
                    <p>
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-aixin"></use>
                        </svg>
                    </p>
                </li>
                <li>
                    <p>
                        <span>2022年</span>
                        <span>12月第5期</span>
                    </p>
                    <p>
                        <span>1.严阵以待</span>
                        <span>2.双人成行</span>
                        <span>3.玩具熊的五夜后宫：安全漏洞</span>
                    </p>
                    <p>
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-aixin"></use>
                        </svg>
                    </p>
                </li>
                <li>
                    <p>
                        <span>2022年</span>
                        <span>1月第4期</span>
                    </p>
                    <p>
                        <span>1.严阵以待</span>
                        <span>2.玩具熊的五夜后宫：安全漏洞</span>
                        <span>3.双人成行</span>
                    </p>
                    <p>
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-aixin"></use>
                        </svg>
                    </p>
                </li>
                <li>
                    <p>
                        <span>2022年</span>
                        <span>1月第4期</span>
                    </p>
                    <p>
                        <span>1.严阵以待</span>
                        <span>2.玩具熊的五夜后宫：安全漏洞</span>
                        <span>3.双人成行</span>
                    </p>
                    <p>
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-aixin"></use>
                        </svg>
                    </p>
                </li>
                <li>
                    <p>
                        <span>2022年</span>
                        <span>1月第4期</span>
                    </p>
                    <p>
                        <span>1.严阵以待</span>
                        <span>2.玩具熊的五夜后宫：安全漏洞</span>
                        <span>3.双人成行</span>
                    </p>
                    <p>
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-aixin"></use>
                        </svg>
                    </p>
                </li>
            </ul>
        </div>
    </div>
    <div class="more">查看更多精品攻略</div>
</template>

<script>
    import { reactive, toRefs } from "@vue/reactivity";
    export default {
        setup(){

            let state = reactive({
                list_change:1,
                list_game_change:1
            });

            function changeList(val) {
                state.list_change = val;
            }

            function changeGameList(val) {
                state.list_game_change = val;
            }

            return{...toRefs(state),changeList,changeGameList};
        }
    };
</script>

<style lang="less" scoped>
    @import url('../../style/base.less');
    .game_list{
        width: 100%;
        height: 950px;
        margin-top: 60px;
        min-width: 425px;
        position: relative;
        // background: red;

        .list_bar{
            width: 300px;
            height: 60px;
            margin: auto;

            span{
                font-size: 18px;
                line-height: 60px;
                position: relative;

                &::after{
                    content: '';
                    position: absolute;
                    width: 30%;
                    height: 8px;
                    top: 48px;
                    left: 55px;
                    border-radius: 8px;
                    background: lightcoral;
                    display: none;
                }

                &:nth-child(1){
                    float: left;
                    width: 150px;
                    height: 100%;
                    font-weight: bold;
                    font-size: 20px;
                }

                &:nth-child(2){
                    float: right;
                    width: 150px;
                    height: 100%;
                }
            }

            .active{
                &::after{
                    display: block;
                }
            }

        }

        .list_game{
            width: 100%;
            height: 650px;
            position: absolute;
            top: 60px;

            .list_game_bar{
                width: 212px;
                height: 33px;
                margin: auto;
                border-radius: 20px;
                border: 1px solid grey;
                margin-top: 20px;

                span{
                    width: 50%;
                    height: 100%;
                    display: block;
                    float: left;
                    border-radius: 20px;
                    line-height: 33px;
                    color: #afafaf;
                    font-size: 15px;

                }

                .active{
                    background: #afafaf;
                    color: #fff;
                }
            }

            .expect_game{
                width: 100%;
                height: 100%;
                margin-top: 20px;
                position: absolute;

                ul{

                    &:nth-child(1){
                        width: 100%;
                        height: 500px;
                        // background: lemonchiffon;

                        li{
                            width: 100%;
                            height: 30%;
                            // background: olivedrab;
                            margin-top: 13px;
                            position: relative;

                            p{
                                position: absolute;

                                &:nth-child(1){
                                    width: 3px;
                                    height: 70%;
                                    background: #ff8439;
                                    left: 10px;
                                    margin-top: 20px;
                                }
                                &:nth-child(2){
                                    width: 20px;
                                    height: 20px;
                                    left: 25px;
                                    top: 40%;
                                    font-weight: bold;
                                    font-size: 17px;
                                }
                                &:nth-child(3){
                                    width: 87px;
                                    height: 116px;
                                    // background: #ff8439;
                                    left: 50px;
                                    top: 10%;
                                    border-radius: 10px;

                                    img{
                                        width: 100%;
                                        border-radius: 10px;
                                    }
                                }
                                &:nth-child(4){
                                    width: 240px;
                                    height: 40%;
                                    // background: #ff8439;
                                    right: 25px;
                                    top: 20px;

                                    span{
                                        text-align: left;
                                        font-size: 14px;
                                        line-height: 30px;

                                        &:nth-child(1){
                                            position: absolute;
                                            width: 100%;
                                            height: 30px;
                                            // background: red;
                                            left: 0;
                                            font-size: 16px;
                                            font-weight: bold;
                                        }
                                        &:nth-child(2){
                                            position: absolute;
                                            width: 50%;
                                            height: 30px;
                                            // background: red;
                                            color: #666666;
                                            left: 0;
                                            bottom: 0;
                                        }
                                        &:nth-child(3){
                                            position: absolute;
                                            width: 20%;
                                            height: 30px;
                                            // background: red;
                                            color: #cccccc;
                                            left: 60%;
                                            bottom: 0;
                                        }
                                        &:nth-child(4){
                                            position: absolute;
                                            width: 20%;
                                            height: 30px;
                                            // background: red;
                                            right: 0;
                                            bottom: 0;
                                            color: #666666;
                                        }
                                    }
                                }
                                &:nth-child(5){
                                    width: 240px;
                                    height: 20%;
                                    // background: #ff8439;
                                    right: 25px;
                                    bottom: 20px;

                                    span{
                                        width: 66px;
                                        height: 25px;
                                        background: #efefef;
                                        border-radius: 25px;
                                        display: block;
                                        float: left;
                                        color: #006cff;

                                        &:nth-child(2){
                                            margin-left: 20px;
                                        }
                                    }
                                }
                            }
                        }

                    }

                    &:nth-child(2){
                        width: 100%;
                        height: 270px;
                        // background: red;

                        li{
                            width: 100%;
                            height: 27px;
                            // background: lightgreen;
                            margin-top: 10px;
                            position: relative;

                            span{
                                display: block;
                                float: left;
                                position: absolute;

                                &:nth-child(1){
                                    width: 3px;
                                    height: 100%;
                                    background: #666666;
                                    left: 10px;
                                }
                                &:nth-child(2){
                                    width: 15px;
                                    height: 100%;
                                    left: 30px;
                                    line-height: 30px;


                                }
                                &:nth-child(3){
                                    width: 40%;
                                    height: 100%;
                                    left: 50px;
                                    line-height: 30px;
                                    color: #000;
                                    text-align: left;
                                    font-size: 14px;
                                    text-indent: 10px;
                                    font-weight: bold;
                                }
                                &:nth-child(4){
                                    width: 50px;
                                    height: 100%;
                                    right: 76px;
                                    line-height: 30px;
                                    color: #cccccc;
                                    text-align: left;
                                    font-size: 13px;
                                    text-indent: 10px;
                                    text-align: left;
                                }
                                &:nth-child(5){
                                    height: 100%;
                                    right: 30px;
                                    line-height: 30px;
                                    color:#666666;;
                                    text-align: left;
                                    font-size: 13px;
                                    text-indent: 10px;
                                }
                            }
                        }
                    }
                }
            }


        }

        .list_num{
            width: 100%;
            height: 680px;
            // background: rgb(126, 126, 152);
            position: absolute;
            top: 60px;

            ul{
                width: 100%;
                height: 100%;
                // background: red;

                li{
                    display: inline-block;
                    width: 98%;
                    height: 95px;
                    background: rgb(5, 5, 5);
                    margin: auto;
                    border-radius: 10px;
                    margin-top: 10px;

                    p{
                        float: left;
                        color: #fff;

                        &:nth-child(1){
                            width: 88px;
                            height: 100%;
                            background: rgb(5, 5, 5);
                            border-radius: 10px 0 0 10px;

                            span{
                                display: block;

                                &:nth-child(1){
                                    margin-top: 20px;
                                }

                                &:nth-child(2){
                                    font-size: 18px;
                                }

                            }
                        }

                        &:nth-child(2){
                            width: 68%;
                            height: 100%;
                            background: rgb(5, 5, 5);

                            span{
                                display: block;
                                width: 100%;
                                height: 24px;
                                line-height: 24px;
                                font-size: 14px;
                                margin-top: 5px;
                                text-align: left;
                                text-indent: 50px;
                            }
                        }

                        &:nth-child(3){
                            width: 10%;
                            height: 100%;
                            background: rgb(5, 5, 5);

                            .icon{
                                color: #fff;
                                margin-top: 30px;
                                font-size: 25px;
                            }
                        }
                    }
                }
            }
        }
    }
    .more{
        @bottom-iphone-more()
    }
    .more{
        color: #cccccc;
        border: 1px solid #cccccc;
        min-width: 425px;
    }
</style>
