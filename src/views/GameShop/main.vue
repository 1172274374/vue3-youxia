<!-- @format -->

<template>
    <div class="game_shop">
        <div class="selected_game">
            <div class="game_head">虎年特惠-独游精选</div>
            <ul>
                <li v-for="(item,i) in shop1" :key="i">
                    <a :href="'/fenghuang/'+item.id">
                        <p>
                            <img :src="item.commodity.split(',')[0]" alt="" />
                        </p>
                        <p>{{ item.price.split(',')[2] }}</p>
                        <p>
                            <span>{{ item.title }}</span>
                            <span>{{ item.products.split(',')[0] }}</span>
                            <span>{{ item.price.split(',')[0] }}</span>
                            <span>{{ item.price.split(',')[1] }}</span>
                        </p>
                        <div v-if="i == 1" class="new">最新</div>
                        <div v-else-if="i == 2" class="new">最新</div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="selected_game">
            <div class="game_head">即将上市 值得期待</div>
            <ul>
                <li v-for="(item,i) in shop2" :key="i">
                    <a :href="'/fenghuang/'+item.id">
                        <p>
                            <img :src="item.commodity.split(',')[0]" alt="" />
                        </p>
                        <p>{{ item.price.split(',')[2] }}</p>
                        <p>
                            <span>{{ item.title }}</span>
                            <span>{{ item.products.split(',')[0] }}</span>
                            <span>{{ item.price.split(',')[0] }}</span>
                            <span>{{ item.price.split(',')[1] }}</span>
                        </p>
                        <div v-if="i != 3" class="new">最新</div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="selected_game">
            <div class="game_head">虎年特惠-孤岛惊魂系列 2折起</div>
            <ul>
                <li v-for="(item,i) in shop3" :key="i">
                    <a :href="'/fenghuang/'+item.id">
                        <p>
                            <img :src="item.commodity.split(',')[0]" alt="" />
                        </p>
                        <p>{{ item.price.split(',')[2] }}</p>
                        <p>
                            <span>{{ item.title }}</span>
                            <span>{{ item.products.split(',')[0] }}</span>
                            <span>{{ item.price.split(',')[0] }}</span>
                            <span>{{ item.price.split(',')[1] }}</span>
                        </p>
                        <div v-if="i == 0" class="low">史低</div>
                        <div v-else-if="i == 3" class="low">史低</div>
                        <div v-else-if="i == 4" class="low">史低</div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="selected_game">
            <div class="game_head">主机也疯狂</div>
            <ul>
                <li v-for="(item,i) in shop4" :key="i">
                    <a :href="'/fenghuang/'+item.id">
                        <p>
                            <img :src="item.commodity.split(',')[0]" alt="" />
                        </p>
                        <p>{{ item.price.split(',')[2] }}</p>
                        <p>
                            <span>{{ item.title }}</span>
                            <span>{{ item.products.split(',')[0] }}</span>
                            <span>{{ item.price.split(',')[0] }}</span>
                            <span>{{ item.price.split(',')[1] }}</span>
                        </p>
                        <div v-if="i==2" class="low">史低</div>
                        <div v-else-if="i==3" class="low">史低</div>
                        <div v-else-if="i==4" class="low">史低</div>
                    </a>
                </li>
            </ul>
        </div>
        <!-- <div class="expect_game"></div>
    <div class="isLand_game"></div>
    <div class="zhuji"></div> -->
    </div>
</template>

<script>
    import { reactive, toRefs } from "@vue/reactivity";
    import { getCurrentInstance, onMounted } from "@vue/runtime-core";
    export default {
        setup() {
            const state = reactive({
                shop1: [],
                shop2: [],
                shop3: [],
                shop4: []
            });
            const Vue = getCurrentInstance();

            onMounted(async() => {
                const shops = await Vue.proxy.$axios.get("/Api/shopDetail", { params: { "id": 1, "number": 20 }});

                state.shop1 = shops.data.slice(0, 5);
                state.shop2 = shops.data.slice(5, 10);
                state.shop3 = shops.data.slice(10, 15);
                state.shop4 = shops.data.slice(15, 20);
            });

            return { ...toRefs(state) };
        }
    };
</script>

<style lang="less" scoped>
    .game_shop{
      width: 1200px;
      height: 1000px;
      // background: red;
      margin: auto;

      .selected_game{
        width: 100%;
        height: 210px;
        margin-top: 30px;
        // background: chartreuse;

        .game_head{
          width: 100%;
          height: 35px;
          // background: chocolate;
          font-size: 22px;
          font-weight: bold;
          text-align: left;
          text-indent: 40px;
          position: relative;

          &::before{
            content: '';
            width: 40px;
            height: 100%;
            background: url('https://static.fhyx.com/images/application/pc/com/guoqing/National_flag.png?8') no-repeat center top;
            position: absolute;
            background-size: 70%;
            left: 0;
          }

          &::after{
            content: 'MORE+';
            width: 40px;
            height: 100%;
            position: absolute;
            line-height: 35px;
            right: 63px;
            font-size: 16px;
            color: #999999;
            font-weight: normal;
          }
        }

        ul{
          width: 100%;
          height: 164px;
          // background: cornflowerblue;
          margin-top: 10px;

          li{
            width: 226px;
            height: 100%;
            // background: crimson;
            float: left;
            margin-left: 17px;
            border-radius: 10px;
            position: relative;
            transition: all .3s;

            &:nth-child(1){
              margin: 0;
            }

            p{

              &:nth-child(1){
                width: 100%;
                height: 102px;
                // background: olive;
                border-radius: 10px 10px 0 0;

                img{
                  width: 100%;
                  border-radius: 10px 10px 0 0 ;
                }
              }
              &:nth-child(2){
                width: 50px;
                height: 24px;
                background: rgb(66, 241, 7);
                border-radius: 0px 7px 0px 8px;
                position: absolute;
                right: 0;
                top: 0;
                color: #fff;
                font-weight: bold;
                line-height: 24px;
              }

              &:nth-child(3){
                width: 100%;
                height: 65px;
                background: rgb(255, 255, 255);
                position: relative;
                border-radius: 0 0 10px 10px;

                span{
                  position: absolute;
                  line-height: 30px;
                  overflow: hidden;

                  &:nth-child(1){
                    width: 50%;
                    height: 30px;
                    // background: palevioletred;
                    left: 10px;
                    top: 0;
                    font-weight: bold;
                    font-size: 16px;
                    text-align: left;
                  }
                  &:nth-child(2){
                    width: 50%;
                    height: 30px;
                    // background: palevioletred;
                    left: 10px;
                    bottom: 0;
                    font-size: 12px;
                    color: #999999;
                    text-align: left;
                  }
                  &:nth-child(3){
                    width: 40%;
                    height: 30px;
                    // background: palevioletred;
                    right: 10px;
                    top: 0;
                    color: #fa4d00;
                    font-weight: bold;
                    font-size: 18px;
                    text-align: right;
                  }
                  &:nth-child(4){
                    width: 40%;
                    height: 30px;
                    // background: palevioletred;
                    right: 10;
                    bottom: 0;
                    font-size: 12px;
                    color: #CCCCCD;
                    text-decoration:line-through #CCCCCD;
                    text-align: right;
                  }
                }
              }

            }

            &:hover{
              box-shadow: 0px 5px 20px rgba(133, 132, 132, 0.34);
            }

            .low{
              position: absolute;
              width: 50px;
              height: 24px;
              left: -9px;
              top: -7px;
              font-size: 14px;
              text-align: left;
              text-indent: 6px;
              color: #fff;
              background: url('https://static.fhyx.com/images/application/pc/com/fhyx_c_lowest.png') no-repeat center;
              background-size: 92%;
              line-height: 26px;
            }
            .new{
              position: absolute;
              width: 50px;
              height: 24px;
              left: -9px;
              top: -7px;
              font-size: 14px;
              text-align: left;
              text-indent: 6px;
              color: #fff;
              background: url('https://static.fhyx.com/images/application/pc/com/fhyx_c_new.png') no-repeat center;
              background-size: 92%;
              line-height: 26px;
            }
          }
        }
      }

      li{
        list-style: none;
      }
    }
</style>
