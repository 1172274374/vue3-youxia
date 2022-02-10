<!-- @format -->

<template>
    <div class="game_moba">
        <el-card shadow="always" class="game_moban_card">
            <template #header>
                <div class="card-header">
                    <span></span>
                    <span>游戏视频</span>
                    <span>MORE+</span>
                </div>
            </template>
            <a href="https://www.ali213.net/news/html/2022-1/648817.html" target="_blank">
                <div class="video1">
                    <div class="video_img">
                        <img src="https://imgs.ali213.net/IndexTJ/2022/01/11/2022011153215461.jpg" alt="" />
                    </div>
                    <div class="video_icon"></div>
                    <p>锐龙完美搭档 技嘉超级雕X570S</p>
                </div>
            </a>
            <div class="box">
                <a href="https://www.bilibili.com/video/BV1344y1J7fx/">
                    <div class="video2">
                        <div>
                            <img src="https://imgs.ali213.net/IndexTJ/2021/12/24/2021122455900419.png" alt="" />
                        </div>
                        <span></span>
                        <p>《守望先锋2》被给予高度评价</p>
                    </div>
                </a>
                <a href="https://www.bilibili.com/video/BV1VL411g74S?spm_id_from=333.999.0.0">
                    <div class="video3">
                        <div>
                            <img src="https://imgs.ali213.net/IndexTJ/2021/11/24/2021112494043722.jpg" alt="" />
                        </div>
                        <span></span>
                        <p>天命奇御二隐藏后宫结局攻略</p>
                    </div>
                </a>
            </div>
        </el-card>
    </div>
</template>

<script>
    export default {

    };
</script>

<style lang="less" scoped>
    .game_moban{
        width: 370px;
        height: 440px;

        &_card{
            height: 440px;
            border-radius: 10px;

            .card-header{
                width: 100%;
                height: 20px;
                position: relative;

                span{

                    &:nth-child(1){
                        width: 6px;
                        height: 23px;
                        background: orange;
                        border-radius: 3px;
                        position: absolute;
                        left: 0;
                    }

                    &:nth-child(2){
                        position: absolute;
                        left: 0;
                        top: -8px;
                        width: 100px;
                        height: 38px;
                        line-height: 38px;
                        font-weight: bold;
                        font-size: 18px;
                    }

                    &:nth-child(3){
                        position: absolute;
                        right: 0;
                        font-weight: bold;
                        color: #7d7d7d;
                        cursor: pointer;

                        &:hover{
                            color: red;
                        }
                    }
                }
            }

            .video1{
                width: 100%;
                height:  210px;
                position: relative;

                .video_img{
                    width: 100%;
                    height: 162px;
                    overflow: hidden;
                    border-radius: 10px;
                    position: relative;

                    img{
                        width: 100%;
                        transition: all .3s;
                    }
                }

                .video_icon{
                    width: 50px;
                    height: 50px;
                    position: absolute;
                    top: 60px;
                    left: 140px;
                    background: url('../../../img/indexicon.png') no-repeat -113px -147px;
                }

                p{
                    width: 100%;
                    height: 30px;
                    margin-top: 15px;
                    text-align: left;
                    font-size: 14px;
                }

                &:hover{
                    div{
                        img{
                            transform: scale(1.2);
                        }
                    }

                    p{
                        color: red;
                    }
                }
            }

            .box{
                width: 100%;
                height: 136px;

                .video2{
                    width: 140px;
                    height: 80%;
                    margin-top: 10px;
                    float: left;
                    display: inline-block;
                    position: relative;

                    div{
                        width: 100%;
                        height: 79px;
                        overflow: hidden;
                        border-radius: 10px;

                        img{
                            width: 100%;
                            transition: all .3s;
                        }
                    }

                    span{
                        width: 50px;
                        height: 50px;
                        position: absolute;
                        top: 13px;
                        left: 36px;
                        background: url('../../../img/indexicon.png') no-repeat -113px -147px;
                    }

                    p{
                        width: 100%;
                        height: 20px;
                        margin-top: 10px;
                        font-size: 13.5px;
                        overflow: hidden;text-align: left;
                    }

                    &:hover{
                        div{
                            img{
                                transform: scale(1.1);
                            }
                        }
                        p{
                            color: red;
                        }
                    }
                }

                .video3{
                    width: 140px;
                    height: 80%;
                    margin-top: 10px;
                    float: right;
                    display: inline-block;
                    position: relative;

                    div{
                        width: 100%;
                        height: 79px;
                        overflow: hidden;
                        border-radius: 10px;

                        img{
                            width: 115%;
                            transition: all .3s;
                        }
                    }

                    span{
                        width: 50px;
                        height: 50px;
                        position: absolute;
                        top: 13px;
                        left: 36px;
                        background: url('../../../img/indexicon.png') no-repeat -113px -147px;
                    }

                    p{
                        width: 100%;
                        height: 20px;
                        margin-top: 10px;
                        font-size: 13.5px;
                        overflow: hidden;text-align: left;
                    }

                    &:hover{
                        div{
                            img{
                                transform: scale(1.1);
                            }
                        }
                        p{
                            color: red;
                        }
                    }
                }
            }
        }
    }
</style>
>
