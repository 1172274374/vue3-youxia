<!-- @format -->

<template>
    <div class="indexheader">
        <router-link to="/"><div class="logo"></div></router-link>
        <div class="icon_list">
            <el-dropdown>
                <div class="index_icon1">
                    <a href="">
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-wengao"></use>
                        </svg>
                        <span class="show_content">资讯</span>
                    </a>
                </div>
                <template #dropdown>
                    <el-dropdown-menu>
                        <el-dropdown-item>科技</el-dropdown-item>
                        <el-dropdown-item>娱乐</el-dropdown-item>
                        <el-dropdown-item>专栏</el-dropdown-item>
                    </el-dropdown-menu>
                </template>
            </el-dropdown>
            <div class="index_icon2">
                <a href="">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-gonglve"></use>
                    </svg>
                    <span class="show_content">攻略</span>
                </a>
            </div>
            <div class="index_icon3">
                <a href="">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-zixun"></use>
                    </svg>
                    <span class="show_content">专题</span>
                </a>
            </div>
            <div class="index_icon4">
                <a href="">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-xiazai2"></use>
                    </svg>
                    <span class="show_content">下载</span>
                </a>
            </div>
            <div class="index_icon5">
                <a href="">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-youxi"></use>
                    </svg>
                    <span class="show_content">游戏</span>
                </a>
            </div>
            <div class="index_icon6">
                <a href="">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-erji-anquanbuding"></use>
                    </svg>
                    <span class="show_content">补丁</span>
                </a>
            </div>
            <div class="index_icon7">
                <a href="">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-yingjian"></use>
                    </svg>
                    <span class="show_content">硬件</span>
                </a>
            </div>
            <div class="index_icon8">
                <a href="">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-gouwuche"></use>
                    </svg>
                    <span class="show_content">论坛</span>
                </a>
            </div>
            <div class="index_icon9">
                <a href="">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-shouji"></use>
                    </svg>
                    <span class="show_content">网游</span>
                </a>
            </div>
            <div class="index_icon10">
                <a href="">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-wangyou"></use>
                    </svg>
                    <span class="show_content">页游</span>
                </a>
            </div>
        </div>
        <div class="search">
            <el-input v-model="input" class="w-50 m-2" size="large" placeholder="三国志14" debounce></el-input>
            <el-button type="danger" round class="search_btn">搜索</el-button>
        </div>
    </div>
</template>

<script setup>
    import { ref } from "vue";
    const input = ref("");
</script>

<style lang="less" scoped>
      .indexheader{
        width: 1200px;
        height: 90px;
        // background: rgb(231, 16, 16);
        margin:  40px auto;
        position: relative;


        .logo{
          width: 24%;
          height: 100%;
          background: violet;
          position: absolute;
          background: url('../../img/yxlogo.png') no-repeat center;
        }

        .icon_list{
          height: 100%;
          width: 74%;
          // background: turquoise;
          position: absolute;
          right: 0;
          display: flex;
          justify-content: space-between;

          .index_icon1{
            width: 60px;
            height: 60px;

            text-align: center;
            font-size: 33px;
            position: relative;

            &::after{
              content: '';
              width: 16px;
              height: 16px;
              background: rgba(62, 61, 62, 0.496);
              position: absolute;
              left: 21px;
              top: 25px;
              opacity: .5;
              filter: blur(5px);
            }

            .icon{
              color: rgb(238, 27, 27);
            }
          }


          .index_icon2{
            width: 60px;
            height: 60px;

            text-align: center;
            font-size: 33px;
            position: relative;

            &::after{
              content: '';
              width: 16px;
              height: 16px;
              background: rgba(62, 61, 62, 0.496);
              position: absolute;
              left: 21px;
              top: 25px;
              opacity: .5;
              filter: blur(5px);
            }

            .icon{
              color: rgb(238, 27, 27);
            }
          }




          .index_icon3{
            width: 60px;
            height: 60px;

            text-align: center;
            font-size: 33px;
            position: relative;

            &::after{
              content: '';
              width: 16px;
              height: 16px;
              background: rgba(62, 61, 62, 0.496);
              position: absolute;
              left: 21px;
              top: 25px;
              opacity: .5;
              filter: blur(5px);
            }

            .icon{
              color: rgb(238, 27, 27);
            }
          }



          .index_icon4{
            width: 60px;
            height: 60px;

            text-align: center;
            font-size: 33px;
            position: relative;

            &::after{
              content: '';
              width: 16px;
              height: 16px;
              background: rgba(62, 61, 62, 0.496);
              position: absolute;
              left: 21px;
              top: 25px;
              opacity: .5;
              filter: blur(5px);
            }

            .icon{
              color: rgb(238, 27, 27);
            }
          }



          .index_icon5{
            width: 60px;
            height: 60px;

            text-align: center;
            font-size: 33px;
            position: relative;

            &::after{
              content: '';
              width: 16px;
              height: 16px;
              background: rgba(62, 61, 62, 0.496);
              position: absolute;
              left: 21px;
              top: 25px;
              opacity: .5;
              filter: blur(5px);
            }

            .icon{
              color: rgb(238, 27, 27);
            }
          }


          .index_icon6{
            width: 60px;
            height: 60px;

            text-align: center;
            font-size: 33px;
            position: relative;

            &::after{
              content: '';
              width: 16px;
              height: 16px;
              background: rgba(62, 61, 62, 0.496);
              position: absolute;
              left: 21px;
              top: 25px;
              opacity: .5;
              filter: blur(5px);
            }

            .icon{
              color: rgb(238, 27, 27);
            }
          }



          .index_icon7{
            width: 60px;
            height: 60px;

            text-align: center;
            font-size: 33px;
            position: relative;

            &::after{
              content: '';
              width: 16px;
              height: 16px;
              background: rgba(62, 61, 62, 0.496);
              position: absolute;
              left: 21px;
              top: 25px;
              opacity: .5;
              filter: blur(5px);
            }

            .icon{
              color: rgb(238, 27, 27);
            }
          }



          .index_icon8{
            width: 60px;
            height: 60px;

            text-align: center;
            font-size: 33px;
            position: relative;

            &::after{
              content: '';
              width: 16px;
              height: 16px;
              background: rgba(62, 61, 62, 0.496);
              position: absolute;
              left: 21px;
              top: 25px;
              opacity: .5;
              filter: blur(5px);
            }

            .icon{
              color: rgb(238, 27, 27);
            }
          }



          .index_icon9{
            width: 60px;
            height: 60px;

            text-align: center;
            font-size: 33px;
            position: relative;

            &::after{
              content: '';
              width: 16px;
              height: 16px;
              background: rgba(62, 61, 62, 0.496);
              position: absolute;
              left: 21px;
              top: 25px;
              opacity: .5;
              filter: blur(5px);
            }

            .icon{
              color: rgb(238, 27, 27);
            }
          }



          .index_icon10{
            width: 60px;
            height: 60px;

            text-align: center;
            font-size: 33px;
            position: relative;

            &::after{
              content: '';
              width: 16px;
              height: 16px;
              background: rgba(62, 61, 62, 0.496);
              position: absolute;
              left: 21px;
              top: 25px;
              opacity: .5;
              filter: blur(5px);
            }

            .icon{
              color: rgb(238, 27, 27);
            }
          }
        }

        .search{
          width: 400px;
          position: absolute;
          right: 0;
          top: 107px;

          &_btn{
            position: absolute;
            right: 0;
            top: 3px;
          }

        }

      }

    .show_content{
      font-size: 14px;
      position: absolute;
      bottom: 0;
      left: 15px;
    }
</style>
