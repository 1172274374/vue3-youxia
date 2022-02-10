<!-- @format -->

<template>
    <div class="highlight_moba">
        <el-card shadow="always" class="highlight_moban_card">
            <div class="highlight_moban_card_header">
                <div :class="['title1',{'active': i == 0}]" @mouseenter="move(0)">精彩看点</div>
                <div :class="['title2',{'active': i == 1}]" @mouseenter="move(1)">特色专栏</div>
                <div class="other">
                    <a href="https://www.ali213.net/news/zl/bxgif/"><span>爆笑动图</span></a>
                    <a href="https://www.ali213.net/news/zl/jiongtu/"><span>囧图</span></a>
                    <a href="https://www.ali213.net/news/zl/xbyhs/"><span>小编游话说</span></a>
                </div>
                <div class="slide" :style="{left:i==0? '27px':'130px'}"></div>
            </div>
            <div class="highlight_moban_card_content">
                <div class="content1" :style="{display:i==0? 'flex':'none'}">
                    <a :href="item.href" target="_blank" v-for="(item,i) in data1" :key="i">
                        <div>
                            <img :src="item.img" :alt="item.title" />
                        </div>
                        <span>{{item.title}}</span>
                    </a>
                </div>
                <div class="content2" :style="{display:i==1? 'flex':'none'}">
                    <a :href="item.href" target="_blank" v-for="(item,i) in data2" :key="i">
                        <div>
                            <img :src="item.img" :alt="item.title" />
                        </div>
                        <span>{{item.title}}</span>
                    </a>
                </div>
            </div>
        </el-card>
    </div>
</template>

<script>
    import {defineComponent, onBeforeMount,reactive,toRefs} from "vue";
    import {getZhiXun} from "../../../api/youxi_ax";
    export default defineComponent({
        setup(){

            let state = reactive({
                i:0,
                data1:[],
                data2:[]
            });

            function move(i){
                state.i = i;
            }

            onBeforeMount(async ()=>{
                const num = Math.ceil(Math.random() * 6);
                const zhixun = await getZhiXun(num);

                state.data1 = zhixun.data.slice(0,8);
                state.data2 = zhixun.data.slice(10,18);

            });



            return {...toRefs(state),move};


        }
    });
</script>

<style lang="less" scoped>
    .highlight_moban{
        width: 370px;
        height: 440px;

        &_card{
            height: 440px;
            border-radius: 10px;

            &_header{
                width: 100%;
                height: 36px;
                margin: 0 auto;
                border-bottom: 1px solid #e8e8e8;
                position: relative;

                .title1{
                    width: 100px;
                    height: 30px;
                    position: absolute;
                    left: 0;
                    top: -7px;
                    font-size: 18px;
                    cursor: pointer;
                }

                .title2{
                    width: 100px;
                    height: 30px;
                    position: absolute;
                    left: 105px;
                    top: -7px;
                    font-size: 18px;
                    cursor: pointer;
                }

                .other{
                    height: 30px;
                    // background: red;
                    position: absolute;
                    right: 0;
                    top: -7px;

                    span{
                        float: right;
                        font-size: 14px;
                        margin-right: 20px;
                        color: #7d7d7d;

                        &:hover{
                            color: red;
                        }
                    }
                }

                .slide{
                    width: 50px;
                    height: 5px;
                    border-radius: 2px;
                    position: absolute;
                    background: lightcoral;
                    left: 27px;
                    bottom: 0;
                }

                .active{
                    font-weight: bold;
                }
            }

            &_content{
                width: 100%;
                height: 371px;


                .content1{
                    width: 100%;
                    height: 100%;
                    background: rgb(255, 255, 255);
                    display: flex;
                    justify-content:space-between;
                    align-items: center;
                    flex-wrap:wrap;

                    a{
                        width: 180px;
                        height: 162px;
                        // background: seagreen;

                        div{
                            width: 100%;
                            height: 102px;
                            overflow: hidden;
                            border-radius: 10px;

                            img{
                                width: 100%;
                                transition: all .3s;

                            }

                            &:hover{
                                img{
                                    transform: scale(1.2);
                                }
                            }
                        }

                        span{
                            display: block;
                            margin-top: 15px;
                            width: 100%;
                            height: 41px;
                            font-size: 14px;
                            overflow: hidden;
                            text-align: left;

                            &:hover{
                                color: red;
                            }
                        }

                    }
                }

                .content2{
                    width: 100%;
                    height: 100%;
                    background: rgb(255, 255, 255);
                    display: flex;
                    justify-content:space-between;
                    align-items: center;
                    flex-wrap:wrap;

                    a{
                        width: 180px;
                        height: 162px;
                        // background: seagreen;

                        div{
                            width: 100%;
                            height: 102px;
                            overflow: hidden;
                            border-radius: 10px;

                            img{
                                width: 100%;
                                transition: all .3s;

                            }

                            &:hover{
                                img{
                                    transform: scale(1.2);
                                }
                            }
                        }

                        span{
                            display: block;
                            margin-top: 15px;
                            width: 100%;
                            height: 41px;
                            font-size: 14px;
                            overflow: hidden;
                            text-align: left;

                            &:hover{
                                color: red;
                            }
                        }


                    }
                }


            }
        }
    }
</style>
>
