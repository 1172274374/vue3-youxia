<!-- @format -->

<template>
    <div class="main_bottom">
        <div class="main_bottom_one">
            <ul>
                <li>单机游戏</li>
                <li><a href="">最新资讯</a></li>
                <li><a href="">单机下载</a></li>
                <li><a href="">游戏库</a></li>
                <li><a href="">单机攻略</a></li>
                <li><a href="">游戏补丁</a></li>
                <li><a href="">单机专题</a></li>
            </ul>
            <ul>
                <li>手机游戏</li>
                <li><a href="">最新手游</a></li>
                <li><a href="">手游资讯</a></li>
                <li><a href="">手游攻略</a></li>
                <li><a href="">找游戏</a></li>
                <li><a href="">手游评测</a></li>
                <li><a href="">手游专区</a></li>
                <li><a href="">手游下载</a></li>
            </ul>
            <ul>
                <li>网络游戏</li>
                <li><a href="">新游测试</a></li>
                <li><a href="">网游发号</a></li>
                <li><a href="">游戏库</a></li>
                <li><a href="">网游攻略</a></li>
            </ul>
            <ul>
                <li>游戏硬件</li>
                <li><a href="">游戏商城</a></li>
                <li><a href="">共享游戏</a></li>
                <li><a href="">大侠号</a></li>
                <li><a href="">游戏视频</a></li>
                <li><a href="">火爆论坛</a></li>
                <li><a href="">美图壁纸</a></li>
            </ul>
            <ul>
                <li><a href="">游侠APP</a></li>
                <li>
                    <img src="https://www.ali213.net/images/ali213-app-code.jpg" alt="" />
                </li>
                <li><a href="">微信公众号</a></li>
                <li>
                    <img src="https://www.ali213.net/images/ali213-weixin-code.jpg" alt="" />
                </li>
            </ul>
        </div>
        <div class="main_bottom_two">
            <p>友情链接</p>
            <ul>
                <li v-for="(item,i) in data" :key="i">
                    <a href="">{{item}}</a>
                </li>
            </ul>
        </div>
        <div class="main_bottom_three">
            <ul>
                <li><a href="">关于游侠</a></li>
                <li>|</li>
                <li><a href="">广告合作</a></li>
                <li>|</li>
                <li><a href="">人才招聘</a></li>
                <li>|</li>
                <li><a href="">友情链接</a></li>
                <li>|</li>
                <li><a href="">意见建议</a></li>
                <li>|</li>
                <li><a href="">联系我们</a></li>
                <li>|</li>
                <li><a href="">网站地图</a></li>
                <li>|</li>
                <li><a href="">版权保护投诉指引</a></li>
            </ul>
            <ul>
                <li><a href="">增值电信业务经营许可证</a></li>
                <li>|</li>
                <li><a href="https://beian.miit.gov.cn">鄂ICP备2022001014号-1</a></li>
                <li>|</li>
                <li><a href="">鄂网文</a></li>
                <li>|</li>
                <li>鄂公网安备</li>
            </ul>
            <p>CopyRight © 1999-2022ALi213.Net All Right Reserved 游侠网 版权所有</p>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                data:["单机门户","凤凰游戏","游民星空","玩一玩游戏网","cc直播","当游网","多多软件站","安卓市场","软件下载","逗游游戏网","牛游戏网","安卓下载","斗蟹单机游戏","起点下载","当下软件园","中关村游戏","西西软件园","开心电玩"]
            };
        },
    };
</script>

<style lang="less" scoped>
    @import url('../../style/base.less');
    .main_bottom{
        width: 1200px;
        height: 100%;
        // background: #ff0000;
        margin: auto;

        &_one{
            width: 100%;
            height: 280px;
            // background: blue;
            margin-top: 30px;
            display: inline-block;

            ul{
                float: left;
                width: 15%;
                height: 100%;
                border-right: 1px solid rgba(171, 161, 161, 0.149);
                margin-left: 70px;


                &:nth-child(1){
                    margin-left: 0;
                }

                li{
                    text-align: left;
                    margin-top: 15px;
                    color: #9c9c9c;

                    a{
                        color: #9c9c9c;
                    }

                    &:nth-child(1){
                        font-size: 22px;
                        font-weight: bold;
                        margin: 0;
                    }
                }

                &:last-child{
                    border: none;

                    li{
                        font-size: 22px;
                        font-weight: bold;

                        img{
                            width: 100%;
                        }

                        &:nth-child(2){
                            width: 92px;
                            height: 92px;
                        }

                        &:nth-child(4){
                            width: 92px;
                            height: 92px;
                        }
                    }
                }
            }

        }

        &_two{
            width: 100%;
            height: 190px;
            margin-top: 80px;

            p{
                font-size: 22px;
                text-align: left;
                font-weight: bold;
                color: #9c9c9c;
            }

            ul{
                width: 80%;
                height: 100px;
                margin-top: 20px;

                li{
                    float: left;
                    font-size: 14px;
                    margin-right: 15px;
                    margin-top: 5px;

                    a{
                        color: #9c9c9c;
                    }

                }
            }
        }

        &_three{
            width: 1000px;
            height: 100px;
            margin: auto;

            ul{

                li{
                    float: left;
                    color: #9c9c9c;
                    a{
                        color: #9c9c9c;
                    }

                    &:nth-child(2n){
                        margin: 0 5px;
                    }
                }

                &:nth-child(1){
                    width: 70%;
                    height: 20px;
                    margin: auto;

                }

                &:nth-child(2){
                    width: 55%;
                    height: 20px;
                    margin: auto;
                    margin-top: 15px;
                }

            }
            p{
                height: 20px;
                margin-top: 10px;
                margin-right: 10px;
                color: #9c9c9c;
                margin-left: -13px;
            }
        }

        a:hover{
            color: red;
        }
        li{
            list-style: none;
        }
    }
</style>
