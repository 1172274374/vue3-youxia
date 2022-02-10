<!-- @format -->

<template>
    <div class="nav">
        <div class="head_left">
            <a href="">
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-shouye1"></use>
                </svg>
                <span>游侠首页</span>
            </a>
            <a href="/fenghuang" target="_blank">
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-bag"></use>
                </svg>
                <span>游侠商城</span>
            </a>
            <a href="">
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-youxi"></use>
                </svg>
                <span>对战平台</span>
            </a>
            <a href="">
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-daohang"></use>
                </svg>
                <span>全站导航</span>
            </a>
            <a href="">
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-huodong"></use>
                </svg>
                <span>游戏中心</span>
            </a>
        </div>
        <div class="head_right">
            <div class="phone">
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-jieshi"></use>
                </svg>
                <router-link to="/youxiaMobile">前往手机版</router-link>
            </div>
            <a href="" class="weibo">
                <span>
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-xinlangweibo"></use>
                    </svg>
                </span>
            </a>
            <span class="weixin">
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-weixin"></use>
                </svg>
            </span>
            <div class="login_register" v-if="isLogin == true">
                <svg class="icon" aria-hidden="true" v-if="vip == false">
                    <use xlink:href="#icon-VIP1"></use>
                </svg>
                <svg class="icon" aria-hidden="true" v-if="vip == true">
                    <use xlink:href="#icon-VIP"></use>
                </svg>
                <!-- <router-link to="/login"><a href="" class="login">{{username}}</a></router-link> -->
                <el-dropdown class="login">
                    <span class="el-dropdown-link">
                        {{username}}<el-icon class="el-icon--right"><arrow-down /></el-icon>
                    </span>
                    <template #dropdown>
                        <el-dropdown-menu>
                            <el-dropdown-item :icon="ChatDotSquare">评论</el-dropdown-item>
                            <el-dropdown-item :icon="Edit">
                                <router-link :to="action">设置</router-link>
                            </el-dropdown-item>
                            <el-dropdown-item :icon="Menu">游戏中心</el-dropdown-item>
                            <el-dropdown-item :icon="Close" @click="cancellation">退出</el-dropdown-item>
                        </el-dropdown-menu>
                    </template>
                </el-dropdown>

                <div class="el_avate">
                    <el-avatar class="avate">
                        <img :src="avate_src" alt="" />
                    </el-avatar>
                </div>
            </div>
            <div class="user_login" v-else-if="isLogin == false">
                <span>
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-denglu-copy"></use>
                    </svg>
                </span>
                <span @click="this.$router.push('/login')">登入</span>
                <span>|</span>
                <span>注册</span>
            </div>
        </div>
    </div>
</template>

<script>
    import { reactive, toRefs } from "@vue/reactivity";
    import { getCurrentInstance, onBeforeMount} from "@vue/runtime-core";
    // import { onMounted } from '@vue/runtime-core'
    import {
        Edit,
        ChatDotSquare,
        Menu,
        Close
    } from "@element-plus/icons-vue";

    // import { useRouter } from 'vue-router';
    import { useStore } from "vuex";

    export default {

        setup(){

            // let router = useRouter()
            let store = useStore();
            let Vue = getCurrentInstance();

            let state = reactive({
                username:"",
                vip:"",
                action:"",
                avate_src:"",
                isLogin:false
            });

            onBeforeMount(()=>{
                state.username = store.state.user.username;
                state.vip = store.state.user.isVip;
                state.action = "/information/"+state.username;

                state.avate_src = "https://youxiatest.oss-cn-beijing.aliyuncs.com/"+state.username+"/imgs/avate.jpg";

                state.isLogin = store.state.user.isLogin;

                console.log(state);

            });

            async function cancellation(){
                let data = await Vue.proxy.$axios.get("/Api/logout");

                console.log(data);

                window.location.href="/login";
            }


            return {...toRefs(state),ChatDotSquare,Edit,Menu,Close,cancellation};

        }

    };
</script>

<style lang="less" scoped>
    .nav{
        width: 100%;
        height: 50px;
        background: #ffffff;
        margin: auto;
        position: relative;


        .head_left{
            position: absolute;
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 40%;
            height: 100%;
            left: 10%;


            a{
                width: 20%;
                height: 100%;

                text-align: right;
                line-height: 50px;
                position: relative;

                span{
                    font-size: 14px;
                    color: #2b2b2b;
                }
            }

        }

        .head_right{
            position: absolute;
            width: 30%;
            height: 100%;
            // background: red;
            right: 20px;

            .phone{
                position: absolute;
                width: 100px;
                height: 100%;
                // background: orange;
                text-align: right;
                font-size: 14px;
                line-height: 50px;

                .icon{
                    position: absolute;
                    left: 0;
                    color: rgb(238, 27, 27);
                }
            }

            .weibo{
                position: absolute;
                width: 50px;
                height: 100%;
                // background: orange;
                left: 25%;
                display: flex;

                .icon{
                    position: absolute;
                    left: 15px;
                    color: rgba(133, 127, 127, 0.598);
                }
            }
            .weixin{
                position: absolute;
                width: 50px;
                height: 100%;
                // background: orange;
                left: 40%;

                .icon{
                    position: absolute;
                    left: 15px;
                    color: rgba(133, 127, 127, 0.598);
                }

            }

            .login_register{
                width: 140px;
                height: 100%;
                // background: orange;
                position: absolute;
                left: 50%;

                .login{
                    position: absolute;
                    left: 60px;
                    top: 17px;
                    font-size: 14px;
                    cursor: pointer;
                }

                .register{
                    position: absolute;
                    left: 100px;
                    top: 10px;
                }

                .icon{
                    color: rgba(133, 127, 127, 0.598);
                    font-size: 23px;
                }
                .el_avate{
                    position: absolute;
                    right: -43px;
                    line-height: 41px;
                    cursor: pointer;
                    top: 7px;

                    .avate{
                        overflow: hidden;

                        img{
                            width: 100%;
                        }
                    }

                    span{
                        width: 30px;
                        height: 30px;
                    }
                }
            }

            .user_login{
                width: 140px;
                height: 100%;
                // background: orange;
                position: absolute;
                left: 50%;

                span{
                    display: block;
                    float: left;
                    color: #748090;
                    font-weight: bold;
                    cursor: pointer;

                    &:nth-child(1){
                        width: 30%;
                        height: 100%;
                    }

                    &:nth-child(2){
                        width: 30%;
                        height: 100%;
                        line-height: 50px;
                        font-size: 14px;
                        color: #748090;
                    }
                    &:nth-child(3){
                        width: 10%;
                        height: 100%;
                        line-height: 50px;
                        float: left;
                    }
                     &:nth-child(4){
                        width: 30%;
                        height: 100%;
                        line-height: 50px;
                        font-size: 14px;
                        color: #748090;
                    }
                }
            }
        }

        .icon{
            font-size: 26px;
            color: rgb(236, 87, 17);
            margin-right: 10px;
            position: absolute;
            left: 9px;
            bottom: 14px;
        }

    }
    .nav::after{
        content: '';
        width: 100%;
        height: 12px;
        background: linear-gradient(180deg, rgba(255, 0, 0, 0.054), rgba(255, 255, 0, 0));
        margin: auto;
        position: absolute;
        bottom: -12px;
        left: 0;
    }
</style>
