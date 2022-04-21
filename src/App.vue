<!-- @format -->

<template>
    <router-view />
</template>

<script>
    import mainMixin from "./mixins/MainMixin";
    import { defineComponent } from "vue";
    import {debounce} from './utils/main'
    export default defineComponent ({
        mixins:[mainMixin],

        data(){
            return{
                scroll_num:1
            }
        },
        async mounted () {

            // console.log(this.$store);
            

            // let goUrl = this.isMobile();
            // if (goUrl === 1) {
            //   //移动端地址
            //     this.$router.push('/mobile_youxia')
            // }else{
            //   //pc端
            //     this.$router.push('/youxia')
            // }

            // console.log(.size);
            // let scrollTop = window.scrollY || document.body.scrollTop ||

            // const that = this

            // $(document).on("mousewheel DOMMouseScroll", debounce(function (event) {

            //     var delta = (event.originalEvent.wheelDelta && (event.originalEvent.wheelDelta > 0 ? 1 : -1)) ||  // chrome & ie
            //                 (event.originalEvent.detail && (event.originalEvent.detail > 0 ? -1 : 1));              // firefox

            //     if (delta > 0) {        // 向上滚

            //     that.scroll_num--
            //         $(document).scrollTop(that.scroll_num*1000);

            //     } else if (delta < 0) {     // 向下滚
            //     that.scroll_num++

            //     console.log(that);
            //         $(document).scrollTop(that.scroll_num*1000);

            //     }

            // },1000));

            



            // window.addEventListener('scroll',e=>{
            //     // let scrollTop = window.scrollY || document.body.scrollTop || document.documentElement.scrollTop

            //     // console.log(scrollTop);

            //     e.preventDefault()

            // })

            // window.addEventListener('resize',e=>{
            //     console.log(e.target.outerWidth);       //获得浏览器的外边框宽度
            // })


        },

        setup(){

            // const data = mainMixin.setup();

            // console.log(data.name.value);
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
