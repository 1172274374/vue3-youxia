<!-- @format -->

<template>
    <div class="hot_game">
        <div class="hot_game_head">
            <span></span>
            <span>热门游戏</span>
            <span>+</span>
            <span>更多</span>
        </div>

        <div class="zhuti">
            <div class="gameList">
                <ul>
                    <li v-for="(item,i) in Game.slice(0,10)" :key="i">
                        <span>
                            <img :src="item.img" :alt="item.name" />
                        </span>
                        <span>{{item.name}}</span>
                    </li>
                </ul>
                <ul>
                    <li v-for="(item,i) in Game.slice(10,20)" :key="i">
                        <span>
                            <img :src="item.img" :alt="item.name" />
                        </span>
                        <span>{{item.name}}</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        props: {                //通过父组件传过来的对象直接渲染模板
            Game: {
                type: Array,
                required: true
            }
        },
    };
</script>

<style lang="less" scoped>
    @import url('../../style/base.less');
    .hot_game{
        width: 100%;
        min-width: 425px;
        height: 450px;
        // background: red;
        margin-top: 30px;

        &_head{
            @head-iphone()
        }

        .zhuti{
            width: 100%;
            min-width: 425px;
            height: 340px;
            overflow: hidden;
            position: relative;
            margin-top: 30px;

            .gameList{
                width: 100%;
                height: 100%;
                overflow-x: scroll;
                overflow-y: hidden;
                white-space: nowrap;
                position: absolute;
                bottom: -12px;

                ul{
                    width: 253%;
                    height: 50%;
                    margin: auto;
                    max-width: 1150px;

                    li{
                        width: 87px;
                        height: 100%;
                        margin-left: 20px;
                        float: left;

                        span{
                            display: block;

                            &:nth-child(1){
                                width: 100%;
                                height: 116px;
                                border-radius: 10px;
                                overflow: hidden;

                                img{
                                    width: 100%;
                                }
                            }

                            &:nth-child(2){
                                width: 100%;
                                border-radius: 10px;
                                overflow: hidden;
                                line-height: 50px;
                            }
                        }
                    }
                }

            }
        }
    }
</style>
