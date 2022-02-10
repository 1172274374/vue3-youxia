<!-- @format -->

<template>
    <div class="main_bg"></div>

    <el-card class="box-card">
        <div class="head">
            <span>免密码登录</span>
            <span>密码登录</span>
        </div>
        <div class="content">
            <input type="text" placeholder="账号" v-model="input_user" />
            <input :type="show_pwd==0?'password':'text'" placeholder="密码" v-model="input_password" />
            <i>
                <svg class="icon" aria-hidden="true" v-show="show_pwd == 0" @click="change_show_pwd(1)">
                    <use xlink:href="#icon-no_eye"></use>
                </svg>
                <svg class="icon" aria-hidden="true" v-show="show_pwd == 1" @click="change_show_pwd(0)">
                    <use xlink:href="#icon-eye"></use>
                </svg>
            </i>
            <div class="other">
                <span>海外手机号登入</span>
                <span>忘记密码?</span>
            </div>
        </div>
        <el-button type="success" @click="ran.submit" :style="{'width':'352px','background':'#06f','height':'40px'}"
            >登入</el-button
        >
        <div class="info">手机验证后自动登录，登录即代表同意《我是傻逼协议》《傻逼保护指引》</div>
        <div class="other_login">
            <span>社交帐号登录</span>
            <span>
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-weixin1"></use>
                </svg>
                微信
            </span>
            <span>
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-shejiaotubiao-03"></use>
                </svg>
                QQ
            </span>
            <span>
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-weibo"></use>
                </svg>
                微博
            </span>
        </div>
    </el-card>
</template>

<script>
    import {useStore} from "vuex";
    // import {useRouter} from 'vue-router'
    import {onMounted,reactive,toRefs,ref, watch} from "vue";
    import { ElNotification,ElMessage} from "element-plus";



    export default {
        setup(){
            // const proxy = getCurrentInstance()
            let store = useStore();
            // let router = useRouter()
            const labelPosition = ref("left");

            const login_from = ref(null);
            const regist_from = ref(null);

            // console.log(store);
            // console.log(router);

            let state = reactive({
                username:"",
                password:"",
                email:"",
                name: "",
                region: "",
                type: "",
                show_pwd:0,
                input_user:"",
                input_password:"",
                vip:""
            });

            watch(()=>state.username,(newdata,olddata)=>{
                console.log(newdata,olddata);
            });

            watch(()=>state.password,(newdata,olddata)=>{
                console.log(newdata,olddata);
            });


            onMounted(()=>{
                ElNotification({
                    title: "账号",
                    message: "1172274374",
                    type: "info",
                    position: "top-left",
                    duration:15000
                });
                ElNotification({
                    title: "密码",
                    message: "Rsz12321",
                    type: "info",
                    position: "top-right",
                    duration:15000
                });

            });

            let ran={
                login_user:async ()=>{

                    let login_user = state.input_user;

                    let reg_user = /^[a-zA-Z0-9_-]{4,16}$/;

                    if(reg_user.test(login_user)){

                        let value = String(login_user);

                        let data = await store.dispatch("user/checkUsername",value);

                        console.log(data);

                        if(data.data != false){
                            state.username = value;
                            if(data.data[0].isvip){
                                state.vip = 1;
                            }else{
                                state.vip = 0;
                            }
                        }else{
                            state.username = "";
                        }
                    }else{
                        state.username = "";
                    }

                },
                login_password:async ()=>{

                    let login_pwd = state.input_password;
                    let reg_password = /^[a-zA-Z0-9_-]{4,16}$/;

                    if(reg_password.test(login_pwd)){

                        let value = String(login_pwd);

                        let data = await store.dispatch("user/checkPassword",value);

                        if(data.data != false){

                            state.password = value;
                        }else{
                            state.password = "";
                        }
                    }else{
                        state.password = "";
                    }

                },
                async submit(){

                    await ran.login_user();
                    await ran.login_password();


                    if(state.password!=""&state.username!=""){
                        ElNotification.success({
                            title: "登入成功",
                            message: "QQ群：607646880",
                            showClose: true,
                            duration:9999999
                        });
                        store.dispatch("changeLogin",true);
                        window.location.href="/youxia";          /* window跳转状态更新，路由跳转状态不更新 */
                    }else{
                        ElMessage({
                            showClose: true,
                            message: "账号或密码错误",
                            type: "error",
                            duration:2000
                        });
                    }
                }
            };

            function change_show_pwd(val) {
                state.show_pwd =val;
            }

            return {ran,login_from,regist_from,...toRefs(state),labelPosition,change_show_pwd};
        }
    };
</script>

<style lang="less" scoped>
    @import url('../../style/base.less');
    .main_bg{
        position: fixed;
        width: 100%;
        height: 100%;
        background: url('../../img/sign_bg.db29b0fb.png') no-repeat center;
        background-size: 100%;
        z-index: -1;
    }

    .box-card{
        width: 400px;
        height: 490px;
        background: #fff;
        user-select: none;
        margin: 50px auto;
        display: inline-block;

        .head{
            width: 100%;
            height: 60px;
            position: relative;

            span{
                display: block;
                float: left;
                height: 60px;
                font-size: 16px;
                line-height: 60px;
                position: relative;

                &:nth-child(1){
                    width: 80px;

                     &::after{
                        content: '';
                        width: 100%;
                        height: 3px;
                        background: #06f;
                        position: absolute;
                        bottom: 7px;
                        left: 0;
                        display: none;
                    }

                }
                &:nth-child(2){
                    font-weight: bold;
                    width: 72px;
                    margin-left: 30px;


                    &::after{
                        content: '';
                        width: 100%;
                        height: 3px;
                        background: #06f;
                        position: absolute;
                        bottom: 7px;
                        left: 0;
                    }
                }
            }


        }

        .content{
            width: 100%;
            height: 170px;
            margin-top: 30px;
            position: relative;

            input{
                display: block;
                border: none;
                width: 100%;
                border-bottom: @border-bottom;
                outline: none;
                height: 48px;
                margin-top: 15px;
            }

            i{
                position: absolute;
                top: 81px;
                right: 0;
            }

            .other{
                width: 100%;
                height: 30px;
                margin-top: 10px;

                span{
                    font-size: 14px;

                    &:nth-child(1){
                        float: left;
                        color: #175199;
                    }

                    &:nth-child(2){
                        float: right;
                        color: #8590a6;
                    }
                }
            }
        }

        .info{
            width: 100%;
            height: 48px;
            border-bottom: @border-bottom;
            font-size: 12px;
            text-align: left;
            color: @font-color;
            margin-top: 27px;
        }

        .other_login{
            width: 100%;
            height: 50px;
            margin-top: 20px;

            span{
                display: inline-block;
                color: @font-color;
                font-size: 14px;

                &:nth-child(1){
                    float: left;

                }

                &:nth-child(2){
                    float: right;
                    margin-right: 10px;

                }
                &:nth-child(3){
                    float: right;
                    margin-right: 10px;
                }
                &:nth-child(4){
                    float: right;
                    margin-right: 10px;
                }

                .icon{
                    font-size: 23px;
                    margin-right: 7px;
                }
            }
        }

    }
</style>
