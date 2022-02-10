<!-- @format -->

<template>
    <router-view />
</template>

<script>
    import mainMixin from "./mixins/MainMixin";
    import { defineComponent } from "vue";
    export default defineComponent ({
        mixins:[mainMixin],
        async mounted () {

            // let goUrl = this.isMobile();
            // if (goUrl === 1) {
            //   //移动端地址
            //     this.$router.push('/mobile_youxia')
            // }else{
            //   //pc端
            //     this.$router.push('/youxia')
            // }

            // console.log(.size);

            console.log(this.$store);




        },

        setup(){

            const data = mainMixin.setup();

            console.log(data.name.value);
        },
        methods:{
            // isMobile(){
            //     let flag = navigator.userAgent.match(/(phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i);
            //     // localStorage.setItem('isiphone',flag)
            //     localStorage.setItem('ismobile',flag?1:0);
            //     let goUrl = flag ? 1 : 0;
            //     return goUrl;
            // }
        },

    });
</script>

<style>
    #app {
      font-family: Avenir, Helvetica, Arial, sans-serif;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
      text-align: center;
      color: #2c3e50;
    }
</style>
