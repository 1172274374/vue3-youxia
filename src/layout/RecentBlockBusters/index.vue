<!-- @format -->

<template>
    <el-card class="box-card">
        <div class="head">
            <h2>近期大作</h2>
            <p>
                <span><a href="">动作冒险</a> /</span>
                <span><a href="">冒险解谜</a> /</span>
                <span><a href="">角色扮演</a> /</span>
                <span><a href="">即时战略</a> /</span>
                <span><a href="">体育竞技</a> /</span>
                <span><a href="">策略战棋</a> /</span>
                <span><a href="">模拟经营</a> /</span>
                <span><a href="">射 击</a> /</span>
                <span><a href="">竞 速</a> /</span>
                <span><a href="">休 闲</a></span>
            </p>
            <span class="more"><a href="">MORE+</a></span>
        </div>
        <div class="content">
            <div class="content_title">
                <ul>
                    <li
                        v-for="(item,i) in blockbusters"
                        :key="i"
                        :class="{'active': title_active == i}"
                        @click="titleChange(i)"
                    >
                        {{i+1}} {{item.title}}
                    </li>
                    <i :style="{top:title_active*34+'px'}"></i>
                </ul>
            </div>
            <div class="content_detail">
                <div class="content_into" v-for="(item,i) in blockbusters" :key="i" v-show="title_active===i">
                    <div class="content_into_head">
                        <div class="content_into_head_title">
                            <h3>{{item.title}}</h3>
                            <span>{{item.tag}}</span>
                        </div>
                        <div class="slogan">
                            <span>“</span>
                            <span>{{item.slogan}}</span>
                        </div>
                        <div class="more"><a href="">MORE+</a></div>
                    </div>
                    <div class="content_into_center">
                        <div class="content_into_center_load">
                            <div class="mainpic">
                                <div class="img"><img :src="item.img" alt="" /></div>
                                <div class="zhuanti"><a :href="item.zhuanti_href">专题</a></div>
                                <div class="luntan"><a :href="item.luntan_href">论坛</a></div>
                            </div>
                            <div class="mainpic_right">
                                <div class="load">
                                    <h3>下载</h3>
                                    <p>
                                        <span>官方中文正式版</span>
                                        <span>|</span>
                                        <span>图文流程攻略</span>
                                    </p>
                                </div>
                                <div class="strategy">
                                    <h3>攻略</h3>
                                    <p>
                                        <a
                                            v-for="(value,x) in blockbusters[i].strategy_title.split(',')"
                                            :key="x"
                                            :href="blockbusters[i].strategy_href.split(',')[x]"
                                        >
                                            <span>{{value}}</span>
                                            <i v-if="x==3"></i>
                                            <i v-else-if="x==7"></i>
                                            <i v-else>|</i>
                                        </a>
                                    </p>
                                </div>
                                <div class="video">
                                    <span v-for="(value1,x1) in blockbusters[i].video_img.split(',')" :key="x1">
                                        <a :href="blockbusters[i].video_href.split(',')[x1]"
                                            ><img :src="value1" alt=""
                                        /></a>
                                        <i></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="content_into_center_score">
                            <div class="game_score">
                                <div class="game_score_head">
                                    <h3>游戏评分</h3>
                                    <p><a href="">查看更多媒体评分+</a></p>
                                </div>
                                <div class="pingfen">
                                    <div class="youxia" @click="changeComments(0)">
                                        <span>
                                            <i
                                                :style="{'color':comments==0?'#f76341':'#a0a0a0'}"
                                                >{{item.score_youxia}}</i
                                            >
                                            /10
                                        </span>
                                        <span>游侠网</span>
                                        <span v-show="comments==0"></span>
                                    </div>
                                    <div class="player" @click="changeComments(1)">
                                        <span>
                                            <i
                                                :style="{'color':comments==1?'#f76341':'#a0a0a0'}"
                                                >{{item.score_player}}</i
                                            >
                                            /10
                                        </span>
                                        <span>玩家评分</span>
                                        <span v-show="comments==1"></span>
                                    </div>
                                    <p>我要虾说</p>
                                </div>
                            </div>
                            <div class="game_detail">
                                <div class="youxia_comments" v-show="comments==0">
                                    <p>{{item.youxia_comments}}</p>
                                    <span><a href="">查看详情</a></span>
                                </div>
                                <div class="player_comments" v-show="comments==1">
                                    <p>{{item.player_comments}}</p>
                                    <span><a href="">查看详情</a></span>
                                </div>
                            </div>
                            <div class="game_shop">
                                <div class="shop_img">
                                    <img :src="item.shop_img" alt="" />
                                </div>
                                <div class="bg"></div>
                                <div class="price">
                                    <span></span>
                                    <span>{{item.shop_youxia_price}}</span>
                                    <span></span>
                                    <span>{{item.shop_steam_price}}</span>
                                </div>
                                <button><a :href="item.shop_href">购买游戏</a></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="newgame">
            <div class="newgame_left">
                <div class="newgame_left_head">
                    <span></span>
                    <span>最新游戏</span>
                    <span><a href="">MORE+</a></span>
                </div>
                <div class="newgame_left_game">
                    <ul>
                        <li v-for="(item,i) in newgame" :key="i">
                            <a :href="'https://0day.ali213.net'+item.href">
                                <img :src="item.img" alt="" />
                                <div class="title">{{item.title}}</div>
                                <div class="bg">
                                    <span>{{item.title}}</span>
                                    <span>{{item.time}}</span>
                                    <span>{{item.xone}}</span>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="newgame_center">
                <div class="newgame_center_head">
                    <span></span>
                    <span>单价攻略</span>
                    <span><a href="">MORE+</a></span>
                </div>
                <div class="strategy">
                    <div class="strategy_top">
                        <div class="strategy_top_1">
                            <div>
                                <img src="https://imgs.ali213.net/IndexTJ/2022/01/20/20220120101113756.jpg" alt="" />
                            </div>
                            <p>战神4攻略大全</p>
                        </div>
                        <div class="strategy_top_2">
                            <div>
                                <img src="https://imgs.ali213.net/IndexTJ/2022/01/20/20220120101033802.jpg" alt="" />
                            </div>
                            <p>彩虹六号异种精品攻略</p>
                        </div>
                    </div>
                    <ul>
                        <li>
                            <img
                                src="https://img1.ali213.net/glpic/2022/01/20/fac1a169-465d-6b60-e357-fe43e2fd9924.jpg"
                                alt=""
                            />

                            <h3>《暖雪》游戏boss有哪些？游戏boss视频大全</h3>
                            <div>
                                <span>2022.01.20</span>
                                <span>BOSS大全</span>
                                <span>|</span>
                                <span>视频解说</span>
                            </div>
                        </li>
                        <li>
                            <img
                                src="https://img1.ali213.net/glpic/2022/01/20/65a092d5-1b96-fae3-9eae-bc3b5c2484b7.jpg"
                                alt=""
                            />
                            <h3>《战神4》光精灵神殿苹果怎么拿？光精灵神殿苹果获取方法</h3>
                            <div>
                                <span>2022.01.20</span>
                                <span>解谜攻略</span>
                                <span>|</span>
                                <span>地图详解</span>
                                <span>|</span>
                                <span>收集要素</span>
                            </div>
                        </li>
                        <li>
                            <img
                                src="https://img1.ali213.net/glpic/2022/01/20/52f3cdff-275b-2ec4-58e5-ae159a247db4.jpg"
                                alt=""
                            />
                            <h3>《全面战争战锤3》配置要求高吗？最低配置及推荐配置介绍</h3>
                            <div>
                                <span>2022.01.20</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="newgame_right">
                <div class="head">
                    <span @click="gameChange(0)" :style="{'font-weight':game_change==0?'bold':'normal'}">MOD</span>
                    <span @click="gameChange(1)" :style="{'font-weight':game_change==1?'bold':'normal'}">修改器</span>
                    <span @click="gameChange(2)" :style="{'font-weight':game_change==2?'bold':'normal'}">最新补丁</span>
                    <i
                        :style="{'left':game_change==0 ? '0px':game_change == 1 ? '100px':game_change == 2 ? '218px':0}"
                    ></i>
                </div>
                <ul v-show="game_change == 0">
                    <li><a href="https://patch.ali213.net/z/8912/" target="_blank">《最终幻想7：重制版》MOD合集</a></li>
                    <li>
                        <a href="https://patch.ali213.net/z/43113/4913/" target="_blank">《生化危机3重制版》MOD合集</a>
                    </li>
                    <li>
                        <a href="//patch.ali213.net/showpatch/183633.html" target="_blank"
                            >《恋活Sunshine》可爱双马尾粉毛美少女MOD</a
                        >
                    </li>
                    <li>
                        <a href="//patch.ali213.net/showpatch/183631.html" target="_blank"
                            >《恋活Sunshine》成熟眼镜制服短裙秘书御姐MOD</a
                        >
                    </li>
                    <li>
                        <a href="//patch.ali213.net/showpatch/183629.html" target="_blank"
                            >《AI少女》性感金发长狐耳大姐姐MOD</a
                        >
                    </li>
                </ul>
                <ul v-show="game_change == 1">
                    <li>
                        <a href="https://patch.ali213.net/z/41025/8243/" target="_blank">《天命奇御二》修改器合集</a>
                    </li>
                    <li><a href="https://patch.ali213.net/z/49613/6587/" target="_blank">《鬼谷八荒》修改器合集</a></li>
                    <li>
                        <a href="//patch.ali213.net/showpatch/183621.html" target="_blank"
                            >《鬼谷八荒》先天气运修改器175项v0.8.5004.266[支持逆天改命/先天气运/道界/器灵/法宝/宗门/道心修改][更新34]</a
                        >
                    </li>
                    <li>
                        <a href="//patch.ali213.net/showpatch/183517.html" target="_blank"
                            >《暖雪》v1.0十三项修改器(感谢游侠会员peizhaochen原创制作)</a
                        >
                    </li>
                    <li>
                        <a href="//patch.ali213.net/showpatch/183457.html" target="_blank"
                            >《吸血鬼幸存者》v0.2.8二十七项修改器(感谢游侠会员peizhaochen原创制作)</a
                        >
                    </li>
                </ul>
                <ul v-show="game_change == 2">
                    <li>
                        <a href="//patch.ali213.net/showpatch/183617.html" target="_blank"
                            >《网易CC直播》v3.21.82官方最新版</a
                        >
                    </li>
                    <li>
                        <a href="//patch.ali213.net/showpatch/183611.html" target="_blank"
                            >《谷歌浏览器》v97.0.4692.71最新版</a
                        >
                    </li>
                    <li>
                        <a href="//patch.ali213.net/showpatch/179121.html" target="_blank"
                            >《夸克浏览器》电脑版v5.5.0.202</a
                        >
                    </li>
                    <li>
                        <a href="//patch.ali213.net/showpatch/176157.html" target="_blank"
                            >《抖音极速版》电脑版v19.4.0</a
                        >
                    </li>
                    <li>
                        <a href="//patch.ali213.net/showpatch/183501.html" target="_blank"
                            >《生化危机3：重制版》MOD整合工具v2022.01.19[仅支持2021.12.17之后的更新版本]</a
                        >
                    </li>
                </ul>

                <div class="newgame_zhuanti">
                    <div class="newgame_zhuanti_head">
                        <span></span>
                        <span>新游专题</span>
                        <span><a href="">MORE+</a></span>
                    </div>
                    <ul>
                        <li v-for="(item,i) in newgame1" :key="i">
                            <a :href="'https://0day.ali213.net'+item.href">
                                <span>
                                    <img :src="item.img" alt="" />
                                </span>
                                <span>{{item.title}}</span>
                                <span></span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="buy">
            <div class="buy_left">
                <div class="today">
                    <div class="today_head">
                        <span></span>
                        <span>今天值得买</span>
                        <span><a href="">MORE+</a></span>
                    </div>
                    <ul>
                        <li>
                            <p>
                                <img src="https://imgs.ali213.net/IndexTJ/2022/01/21/2022012150506634.jpg" alt="" />
                            </p>
                            <p></p>
                            <p>赛博朋克2077</p>
                            <p>50%OFF</p>
                            <p><a href="https://ali213.fhyx.hk/item/3204.html?uf=yxzdm#attrone=10451">立即抢购</a></p>
                            <p>Cyberpunk 2077</p>
                        </li>
                        <li>
                            <p>
                                <img src="https://imgs.ali213.net/IndexTJ/2022/01/20/202201204345719.jpg" alt="" />
                            </p>
                            <p></p>
                            <p>彩虹六号：围攻</p>
                            <p>60%OFF</p>
                            <p><a href="https://ali213.fhyx.hk/item/4555.html?uf=yxzdm">立即抢购</a></p>
                            <p>Rainbow Six:Siege</p>
                        </li>
                    </ul>
                </div>
                <div class="all_play">
                    <div class="all_play_head">
                        <span></span>
                        <span>大家都在玩</span>
                        <span><a href="">MORE+</a></span>
                    </div>
                    <ul>
                        <li v-for="(item,i) in buyGames.slice(0,4)" :key="i">
                            <a :href="item.href" target="_blank" :alt="item.title">
                                <p>
                                    <img :src="item.img" alt="" />
                                    <b>
                                        <span>{{item.title}}</span>
                                        <span>{{item.time}}</span>
                                        <span>立即购买</span>
                                    </b>
                                </p>
                                <p>
                                    <span>{{item.discount}}</span>
                                    <span
                                        ><div class="s3-price">{{item.price}}</div></span
                                    >
                                    <span>{{item.oldprice}}</span>
                                </p>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="cabinet">
                    <ul>
                        <li v-for="(item,i) in buyGames.slice(4,7)" :key="i">
                            <a :href="item.href"><img :src="item.img" :alt="item.title" /></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="buy_right">
                <div class="buy_right_head">
                    <span></span>
                    <span>游戏销量榜</span>
                    <span><a href="">MORE+</a></span>
                </div>
                <ul>
                    <li>
                        <div
                            class="title"
                            :style="{'display':buy_num==0?'none':'block'}"
                            @mouseenter="change_buy_num(0)"
                        >
                            <span>战神4</span>
                            <span></span>
                        </div>
                        <div class="content" :style="{'display':buy_num==0?'block':'none'}">
                            <p>战神4</p>
                            <p></p>
                            <p>
                                <span>类型：动作游戏ACT</span>
                                <span>平台：PC/PS4</span>
                                <span>发行：Sony Interactive Entertainment</span>
                            </p>
                            <p>
                                <span><a href="https://ali213.fhyx.hk/item/3106.html">购买</a></span>
                                <span><a href="https://www.ali213.net/zt/mhrise/">专题</a></span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div
                            class="title"
                            :style="{'display':buy_num==1?'none':'block'}"
                            @mouseenter="change_buy_num(1)"
                        >
                            <span>怪物猎人：崛起</span>
                            <span></span>
                        </div>
                        <div class="content" :style="{'display':buy_num==1?'block':'none'}">
                            <p>怪物猎人：崛起</p>
                            <p></p>
                            <p>
                                <span>类型：动作游戏ACT</span>
                                <span>平台：PC/Switch</span>
                                <span>发行：CAPCOM Co., Ltd.</span>
                            </p>
                            <p>
                                <span><a href="https://ali213.fhyx.hk/item/6727.html">购买</a></span>
                                <span><a href="https://www.ali213.net/zt/mhrise/">专题</a></span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div
                            class="title"
                            :style="{'display':buy_num==2?'none':'block'}"
                            @mouseenter="change_buy_num(2)"
                        >
                            <span>严阵以待</span>
                            <span></span>
                        </div>
                        <div class="content" :style="{'display':buy_num==2?'block':'none'}">
                            <p>严阵以待</p>
                            <p></p>
                            <p>
                                <span>类型：动作射击STG</span>
                                <span>平台：PC</span>
                                <span>发行：Void Interactive</span>
                            </p>
                            <p>
                                <span><a href="">购买</a></span>
                                <span><a href="https://www.ali213.net/zt/readyornot/">专题</a></span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div
                            class="title"
                            :style="{'display':buy_num==3?'none':'block'}"
                            @mouseenter="change_buy_num(3)"
                        >
                            <span>艾尔登法环</span>
                            <span></span>
                        </div>
                        <div class="content" :style="{'display':buy_num==3?'block':'none'}">
                            <p>艾尔登法环</p>
                            <p></p>
                            <p>
                                <span>类型：角色扮演RPG</span>
                                <span>平台：PC/PS4</span>
                                <span>发行：FSGameStudio, BANDAI NAMCO</span>
                            </p>
                            <p>
                                <span><a href="https://ali213.fhyx.hk/item/6371.html">购买</a></span>
                                <span><a href="https://www.ali213.net/zt/eldenring/">专题</a></span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div
                            class="title"
                            :style="{'display':buy_num==4?'none':'block'}"
                            @mouseenter="change_buy_num(4)"
                        >
                            <span>僵尸毁灭工程</span>
                            <span></span>
                        </div>
                        <div class="content" :style="{'display':buy_num==4?'block':'none'}">
                            <p>僵尸毁灭工程</p>
                            <p></p>
                            <p>
                                <span>类型：角色扮演RPG</span>
                                <span>平台：PC</span>
                                <span>发行：Indie Stone Studios</span>
                            </p>
                            <p>
                                <span><a href="">购买</a></span>
                                <span><a href="https://www.ali213.net/zt/projectzomboid/">专题</a></span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div
                            class="title"
                            :style="{'display':buy_num==5?'none':'block'}"
                            @mouseenter="change_buy_num(5)"
                        >
                            <span>消逝的光芒2</span>
                            <span></span>
                        </div>
                        <div class="content" :style="{'display':buy_num==5?'block':'none'}">
                            <p>消逝的光芒2</p>
                            <p></p>
                            <p>
                                <span>类型：动作游戏ACT</span>
                                <span>平台：PC/PS4/PS5</span>
                                <span>发行：Warner Bros. Interactive Entertainment</span>
                            </p>
                            <p>
                                <span><a href="https://ali213.fhyx.hk/item/3223.html">购买</a></span>
                                <span><a href="https://www.ali213.net/zt/dlt2/">专题</a></span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div
                            class="title"
                            :style="{'display':buy_num==6?'none':'block'}"
                            @mouseenter="change_buy_num(6)"
                        >
                            <span>双人成行</span>
                            <span></span>
                        </div>
                        <div class="content" :style="{'display':buy_num==6?'block':'none'}">
                            <p>双人成行</p>
                            <p></p>
                            <p>
                                <span>类型：动作游戏ACT</span>
                                <span>平台：PC</span>
                                <span>发行：Electronic Arts</span>
                            </p>
                            <p>
                                <span><a href="https://ali213.fhyx.hk/item/5493.html">购买</a></span>
                                <span><a href="https://www.ali213.net/zt/ittakestwo/">专题</a></span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div
                            class="title"
                            :style="{'display':buy_num==7?'none':'block'}"
                            @mouseenter="change_buy_num(7)"
                        >
                            <span>玩具熊的五夜后宫：安全漏洞</span>
                            <span></span>
                        </div>
                        <div class="content" :style="{'display':buy_num==7?'block':'none'}">
                            <p>玩具熊的五夜后宫：安全漏洞</p>
                            <p></p>
                            <p>
                                <span>类型：冒险游戏AVG</span>
                                <span>平台：PC/PS4/PS5</span>
                                <span>发行：Scott Cawthon</span>
                            </p>
                            <p>
                                <span><a href="">购买</a></span>
                                <span><a href="https://www.ali213.net/zt/fivenafsb/">专题</a></span>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </el-card>
</template>

<script>
    import { reactive,toRefs } from "@vue/reactivity";

    export default {
        props: {                //通过父组件传过来的对象直接渲染模板
            blockbusters: {
                type: Array,
                required: true
            },
            newgame: {
                type: Array,
                required: true
            },
            newgame1: {
                type: Array,
                required: true
            },
            buyGames: {
                type: Array,
                required: true
            }
        },
        setup(){
            let state = reactive({
                title_active:0,
                comments:0,
                game_change:0,
                buy_num:0
            });



            function titleChange(val){
                state.title_active = val;
            }

            function changeComments(val){
                state.comments = val;
            }

            function gameChange(val){
                state.game_change = val;
            }
            function change_buy_num(val){
                state.buy_num = val;
            }

            return {...toRefs(state),titleChange,changeComments,gameChange,change_buy_num};
        }
    };
</script>

<style lang="less" scoped>
    @import url('../../style/base.less');
    .box-card{
        width: 1200px;
        height: 1530px;
        margin: 0 auto;
        background: rgb(255, 255, 255);
        border-radius: 10px;

        .head{
            width: 100%;
            height: 45px;
            // background: red;
            margin: 0 auto;
            position: relative;
            overflow: hidden;
            border-bottom: 1px solid rgba(214, 214, 214, 0.639);

            h2{
                font-size: 22px;
                position: absolute;
                left: 0;
            }

            p{
                width: 62%;
                height: 100%;
                // background: brown;
                position: absolute;
                left: 350px;

                span{
                    float: left;
                    margin: 5px 8px 0;
                    font-size: 14px;

                }
            }

            .more{
                position: absolute;
                right: 0;
                font-weight: bold;
                font-size: 17px;
                margin-top: 6px;

                a{
                    color: #7d7d7d;
                }

                &:hover{
                    a{
                        color: red;
                    }
                }
            }



        }

        .content{
            width: 100%;
            height: 394px;
            // background: blue;
            margin-top: 10px;
            position: relative;

            &_title{
                position: absolute;
                width: 219px;
                height: 100%;
                // background: blueviolet;
                left: 0;

                ul{
                    width: 100%;
                    height: 86%;
                    margin-top: 28px;
                    border-right: 1px solid #f8482b;
                    position: relative;

                    li{
                        width: 100%;
                        height: 34px;
                        // background: red;
                        font-size: 14px;
                        text-align: left;
                        cursor: pointer;

                        &:hover{
                            color: red;
                        }
                    }

                    i{
                        width: 17px;
                        height: 17px;
                        background: #fc9871;
                        border-radius: 20px;
                        position: absolute;
                        right: -9px;
                        top: 0;

                    }

                    .active{
                        color: #f8482b;
                        font-weight: bold;
                    }
                }
            }

            &_detail{
                position: absolute;
                width: 900px;
                height: 95%;
                background: rgb(141, 86, 193);
                right: 0;
                top: 16px;

                .content_into{
                    position: absolute;
                    width: 100%;
                    height: 100%;
                    background: rgb(251, 255, 255);

                    &_head{
                        width: 100%;
                        height: 50px;
                        // background: lightgreen;

                        &_title{
                            width: 180px;
                            height: 100%;
                            float: left;

                            h3{
                                width: 100%;
                                height: 28px;
                                font-size: 20px;
                                text-align: left;
                                font-weight: bold;

                            }
                            span{
                                display: block;
                                width: 100%;
                                height: 20px;
                                font-size: 14px;
                                color: #2b2b2b;
                            }
                        }

                        .slogan{
                            width: 30%;
                            height: 100%;
                            // background: red;
                            float: left;
                            margin-left: 100px;
                            position: relative;

                            span{
                                display: inline-block;
                                float: left;

                                &:nth-child(1){
                                    font-size: 52px;
                                    color: #9f9f9f;
                                }
                                &:nth-child(2){
                                    font-size: 14px;
                                    margin-top: 10px;
                                    margin-left: 10px;
                                    color: #9f9f9f;
                                    position: absolute;
                                    left: 23px;
                                    top: 0;
                                    text-align: left;
                                }
                            }
                        }

                        .more{
                            width: 100px;
                            height: 100%;
                            float: right;
                            font-weight: bold;
                            line-height: 40px;
                            text-align: right;
                            color: #7d7d7d;

                            a{
                                color: #7d7d7d;
                            }

                            &:hover{
                                a{
                                    color: red;
                                }
                            }
                        }
                    }

                    &_center{
                        width: 100%;
                        height: 86%;

                        position: relative;

                        &_load{
                            width: 550px;
                            height: 100%;
                            background: rosybrown;
                            position: absolute;
                            left: 0;


                            .mainpic{
                                width: 210px;
                                height: 100%;
                                background: rgb(253, 253, 253);
                                float: left;

                                .img{
                                    width: 171px;
                                    height: 227px;
                                    margin-top: 20px;
                                    overflow: hidden;
                                    border-radius: 10px;

                                    img{
                                        width: 100%;
                                    }
                                }
                                .zhuanti{
                                    display: inline-block;
                                    width: 62px;
                                    height: 26px;
                                    background: #fb5b46;
                                    border: 1px solid #fb5b46;
                                    border-radius: 26px;
                                    margin-top: 20px;
                                    margin-left: 18px;
                                    float: left;

                                    a{
                                        color: #fff;
                                    }
                                }
                                .luntan{
                                    display: inline-block;
                                    width: 62px;
                                    height: 26px;
                                    background: none;
                                    border: 1px solid #fb5b46;
                                    border-radius: 26px;
                                    margin-top: 20px;
                                    margin-right: 60px;
                                    float: right;

                                    a{
                                        color: #fb5b46;
                                    }
                                }
                            }

                            .mainpic_right{
                                width: 340px;
                                height: 100%;
                                background: rgb(255, 255, 255);
                                position: absolute;
                                right: 0;

                                .load{
                                    width: 100%;
                                    height: 80px;
                                    // background: red;
                                    margin-top: 20px;

                                    h3{
                                        width: 100%;
                                        height: 30px;
                                        text-align: left;
                                        font-weight: bold;
                                    }
                                    p{
                                        width: 70%;
                                        height: 30px;
                                        // background: lightcoral;
                                        text-align: left;

                                        span{
                                            font-size: 14px;

                                            &:nth-child(2){
                                                margin: 0 10px;
                                                color: rgb(152, 148, 148);
                                            }
                                        }
                                    }
                                }

                                .strategy{
                                    width: 75%;
                                    height: 80px;
                                    // background: red;

                                    h3{
                                        width: 100%;
                                        height: 30px;
                                        text-align: left;
                                        font-weight: bold;
                                    }

                                    p{
                                        width: 100%;
                                        height: 50px;
                                        // background: lightcyan;
                                        text-align: left;

                                        span{
                                            font-size: 14px;


                                        }
                                        i{
                                            font-size: 14px;
                                            margin: 0 3px;
                                            color: rgba(196, 192, 192, 0.775);
                                        }
                                    }
                                }

                                .video{
                                    width: 92%;
                                    height: 88px;
                                    margin-top: 20px;

                                    span{
                                        display: inline-block;

                                        &:nth-child(1){
                                            width: 148px;
                                            height: 100%;
                                            background: lightgreen;
                                            float: left;
                                            overflow: hidden;
                                            border-radius: 10px;
                                            position: relative;

                                            img{
                                                width: 112%;
                                                transition: all .3s;
                                            }

                                            &::after{
                                                content: '';
                                                display: block;
                                                width: 54px;
                                                height: 54px;
                                                background: red;
                                                left: 49px;
                                                top: 18px;
                                                position: absolute;
                                                background: url('../../img/indexicon.png') no-repeat -113px -147px;
                                            }

                                            &:hover{
                                                img{
                                                    transform: scale(1.1);
                                                }
                                            }
                                        }

                                        &:nth-child(2){
                                            width: 148px;
                                            height: 100%;
                                            background: lightgreen;
                                            float: right;
                                            overflow: hidden;
                                            border-radius: 10px;
                                            position: relative;

                                            img{
                                                width: 112%;
                                                transition: all .3s;
                                            }

                                            &::after{
                                                content: '';
                                                display: block;
                                                width: 54px;
                                                height: 54px;
                                                background: red;
                                                left: 49px;
                                                top: 18px;
                                                position: absolute;
                                                background: url('../../img/indexicon.png') no-repeat -113px -147px;
                                            }
                                            &:hover{
                                                img{
                                                    transform: scale(1.1);
                                                }
                                            }

                                        }


                                    }
                                }

                            }
                        }

                        &_score{
                            width: 350px;
                            height: 100%;
                            // background: lemonchiffon;
                            float: right;

                            .game_score{
                                width: 100%;
                                height: 100px;
                                // background: red;
                                border-bottom: 1px solid rgba(165, 163, 163, 0.197);

                                &_head{
                                    h3{
                                        height: 30px;
                                        float: left;
                                        font-size: 18px;
                                        font-weight: bold;
                                        text-align: left;
                                    }
                                    p{
                                        font-size: 14px;
                                        text-align: right;

                                        &:hover{
                                            color: red;
                                        }
                                    }
                                }

                                .pingfen{
                                    width: 100%;
                                    height: 62%;
                                    // background: lightblue;
                                    margin-top: 20px;

                                    .youxia{
                                        width: 70px;
                                        height: 100%;
                                        // background: lightgreen;
                                        float: left;
                                        position: relative;

                                        span{
                                            display: block;
                                            font-size: 14px;

                                            &:nth-child(1){
                                                width: 100%;
                                                height: 30px;
                                                // background: red;

                                                i{
                                                    font-size: 21px;
                                                    color: rgb(160, 160, 160);
                                                    font-weight: bold;
                                                }
                                            }
                                            &:nth-child(2){
                                                width: 100%;
                                                height: 30px;
                                            }
                                            &:nth-child(3){
                                                width: 47px;
                                                height: 8px;
                                                background: #f76341;
                                                border-radius: 8px;
                                                position: absolute;
                                                bottom: -3px;
                                                left: 13px;
                                            }
                                        }
                                    }

                                    .player{
                                        width: 70px;
                                        height: 100%;
                                        // background: lightgreen;
                                        float: left;
                                        position: relative;
                                        margin-left: 50px;

                                        span{
                                            display: block;
                                            font-size: 14px;

                                            &:nth-child(1){
                                                width: 100%;
                                                height: 30px;
                                                // background: red;

                                                i{
                                                    font-size: 21px;
                                                    color: #f76341;
                                                    font-weight: bold;
                                                }
                                            }
                                            &:nth-child(2){
                                                width: 100%;
                                                height: 30px;
                                            }
                                            &:nth-child(3){
                                                width: 47px;
                                                height: 8px;
                                                background: #f76341;
                                                border-radius: 8px;
                                                position: absolute;
                                                bottom: -3px;
                                                left: 12px;
                                            }
                                        }
                                    }
                                    p{
                                        width: 76px;
                                        height: 28px;
                                        float: right;
                                        border-radius: 25px;
                                        border: 3px solid #f76341;
                                        margin-right: 10px;
                                        color: #f76341;
                                        line-height: 28px;
                                        font-size: 14px;

                                    }
                                }
                            }
                            .game_detail{
                                width: 100%;
                                height: 85px;
                                margin-top: 15px;
                                position: relative;

                                .youxia_comments{
                                    width: 100%;
                                    height: 100%;
                                    position: absolute;
                                    background: #fff;

                                    p{
                                        width: 95%;
                                        height: 100%;
                                        margin: auto;
                                        text-align: left;
                                        font-size: 14px;
                                        letter-spacing: 1px;
                                    }
                                    span{
                                        display: block;
                                        width: 56px;
                                        height: 25px;
                                        position: absolute;
                                        right: 0;
                                        bottom: 0;
                                        font-size: 14px;

                                        a{
                                            color: #436bff;

                                            &:hover{
                                                color: red;
                                            }
                                        }
                                    }
                                }
                                .player_comments{
                                    width: 100%;
                                    height: 100%;
                                    position: absolute;
                                    background: #fff;

                                    p{
                                        width: 95%;
                                        height: 100%;
                                        margin: auto;
                                        text-align: left;
                                        font-size: 14px;
                                        letter-spacing: 1px;
                                    }
                                    span{
                                        display: block;
                                        width: 56px;
                                        height: 25px;
                                        position: absolute;
                                        right: 0;
                                        bottom: 0;
                                        font-size: 14px;

                                        a{
                                            color: #436bff;

                                            &:hover{
                                                color: red;
                                            }
                                        }
                                    }
                                }
                            }

                            .game_shop{
                                width: 100%;
                                height: 70px;
                                background: url('../../img/mask_buy.png');
                                margin-top: 10px;
                                overflow: hidden;
                                border-radius: 10px;
                                position: relative;

                                .shop_img{
                                    width: 154px;
                                    height: 72px;
                                    float: left;

                                    img{
                                        width: 100%;
                                    }
                                }
                                .bg{
                                    position: absolute;
                                    width: 100%;
                                    height: 100%;
                                    background: linear-gradient(to right,rgba(255,255,255,0) 0%,rgba(255,255,255,0) 30%,rgba(255,255,255,0.5) 50%);
                                }
                                .price{
                                    width: 196px;
                                    height: 30px;
                                    position: absolute;
                                    right: 0;
                                    top: 0;

                                    span{
                                        float: left;
                                        font-size: 16px;

                                        &:nth-child(1){
                                            width: 20px;
                                            height: 20px;
                                            margin-left: 10px;
                                            background: url('../../img/indexicon.png') no-repeat -272px -164px;
                                        }
                                        &:nth-child(2){
                                            width: 53px;
                                            height: 20px;
                                            margin-left: 5px;
                                            color: #f76341;
                                            font-weight: bold;
                                        }
                                        &:nth-child(3){
                                            width: 20px;
                                            height: 20px;
                                            margin-left: 10px;
                                            background: url('../../img/indexicon.png') no-repeat -222px -164px;
                                            margin-left: 25px;
                                        }
                                        &:nth-child(4){
                                            width: 53px;
                                            height: 20px;
                                            margin-left: 5px;
                                            color: #b5b3b3;
                                            font-size: 16px;
                                        }
                                    }
                                }

                                button{
                                    width: 82px;
                                    height: 30px;
                                    background: #fb5b46;
                                    border-radius: 30px;
                                    border: none;
                                    position: absolute;
                                    bottom: 6px;
                                    right: 0;
                                    line-height: 30px;
                                    font-size: 15px;

                                    a{
                                        color: #fff;

                                        &:hover{
                                            color: #fff;
                                        }
                                    }
                                }
                            }
                        }

                    }


                }

                .up{
                    z-index: 999;
                }
            }
        }

        .newgame{
            width: 100%;
            height: 500px;
            // background: red;
            margin-top: 5px;

            .newgame_left{
                width: 325px;
                height: 100%;
                // background: blue;
                float: left;

                &_head{

                    @head()
                }

                &_game{
                    width: 100%;
                    height: 464px;
                    // background: red;

                    ul{
                        width: 95%;
                        height: 95%;
                        // background: rgb(211, 116, 116);
                        margin-left: 1px;
                        margin-top: 13px;
                        display: inline-block;

                        li{
                            width: 135px;
                            height: 179px;
                            background: rgb(236, 164, 164);
                            float: left;
                            margin-top: 20px;
                            border-radius: 10px;
                            overflow: hidden;
                            position: relative;

                            .title{
                                position: absolute;
                                width: 100%;
                                height: 24px;
                                font-weight: bold;
                                color: #fff;
                                bottom: 0;
                                display: block;
                                z-index: 999;
                                background: linear-gradient(2deg, #3b3b3beb, #75757600);
                            }

                            .bg{
                                width: 100%;
                                height: 100%;
                                position: absolute;
                                z-index: 998;
                                background: linear-gradient(2deg, #000000bf 20%, #0000ff00 80%);
                                top: 0;
                                display: none;

                                span{
                                    color: #fff;
                                    display: block;
                                    text-align: left;
                                    font-size: 12px;
                                    position: absolute;
                                    left: 10px;


                                    &:nth-child(1){
                                        font-size: 14px;
                                        color: #fff;
                                        font-weight: bold;
                                        bottom: 40px;
                                    }
                                    &:nth-child(2){
                                        color: #fff;
                                        bottom: 20px;
                                    }
                                    &:nth-child(3){
                                        color: #fff;
                                        bottom: 5px;
                                    }
                                }

                            }

                            img{
                                width: 100%;
                                transition: all .3s;
                            }

                            &:nth-child(2n){
                                float: right;
                            }
                            &:nth-child(3){
                                margin-top: 33px;
                            }
                            &:nth-child(4){
                                margin-top: 33px;
                            }

                            &:hover{
                                img{
                                    transform: scale(1.2);
                                }
                                .title{
                                    display: none;
                                }
                                .bg{
                                    display: block;
                                }
                            }
                        }
                    }
                }
            }

            .newgame_center{
                width: 500px;
                height: 100%;
                // background: lemonchiffon;
                float: left;
                margin-left: 30px;

                &_head{

                    @head()
                }

                .strategy{
                    width: 100%;
                    height: 423px;
                    // background: red;

                    &_top{
                        width: 100%;
                        height: 142px;
                        // background: red;
                        margin-top: 33px;
                        display: inline-block;

                        &_1{
                            width: 240px;
                            height: 100%;
                            float: left;

                            div{
                                width: 100%;
                                height: 117px;
                                border-radius: 10px;
                                overflow: hidden;

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
                            p{
                                font-size: 14px;
                                font-weight: bold;
                                margin-top: 5px;
                            }
                        }

                        &_2{
                            width: 240px;
                            height: 100%;
                            // background: lightblue;
                            float: right;

                            div{
                                width: 100%;
                                height: 117px;
                                border-radius: 10px;
                                overflow: hidden;

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
                            p{
                                font-size: 14px;
                                font-weight: bold;
                                margin-top: 5px;
                            }
                        }
                    }

                    ul{
                        width: 100%;
                        height: 245px;

                        li{
                            width: 100%;
                            height: 72px;
                            margin: 12px 0;
                            position: relative;

                                img{
                                    width: 75px;
                                    height: 50px;
                                    position: absolute;
                                    left: 0;
                                    top: 10px;
                                    border-radius: 10px;

                                }

                                h3{
                                    width: 410px;
                                    height: 18px;
                                    position: absolute;
                                    right: 0;
                                    top: 10px;
                                    font-size: 14px;
                                    font-weight: normal;
                                    text-align: left;
                                    overflow: hidden;
                                    cursor: pointer;

                                    &:hover{
                                        color: red;
                                    }

                                }

                                div{
                                    position: absolute;
                                    bottom: 0;
                                    right: 0;
                                    width: 410px;
                                    height: 14px;
                                    margin-bottom: 13px;

                                    span{
                                        float: left;
                                        font-size: 12px;
                                        color: #f8785a;

                                        &:nth-child(1){
                                            color: #8d8d8d;
                                            font-size: 15px;
                                        }
                                        &:nth-child(2){
                                            margin-left: 20px;
                                        }
                                        &:nth-child(2n+1){
                                            margin: 0 5px;
                                        }
                                    }
                                }


                            &:nth-child(1){
                                border-bottom: 1px solid #e8e8e8;
                            }
                            &:nth-child(2){
                                border-bottom: 1px solid #e8e8e8;
                            }
                        }
                    }
                }

            }

            .newgame_right{
                width: 281px;
                height: 100%;
                float: right;
                position: relative;

                .head{
                    width: 100%;
                    height: 35px;
                    position: relative;

                    span{
                        font-size: 18px;
                        position: absolute;
                        cursor: pointer;



                        &:nth-child(1){
                            left: 0;
                        }
                        &:nth-child(2){
                            left: 96px;
                            top: -2px;
                        }
                        &:nth-child(3){
                            right: 0;
                            top: -2px;
                        }



                        &:hover{
                            font-weight: bold;
                        }
                    }

                    i{
                        position: absolute;
                        left: 0;
                        bottom: 0;
                        width: 50px;
                        height: 6px;
                        border-radius: 3px;
                        background: #f76341;
                    }

                }
                ul{
                    width: 100%;
                    height: 150px;
                    position: absolute;
                    margin-top: 31px;

                    li{
                        width: 100%;
                        height: 30px;
                        overflow: hidden;
                        text-align: left;
                        font-size: 14px;
                        line-height: 30px;
                        text-indent: 18px;
                        position: relative;

                        a{
                            &:hover{
                                color: red;
                            }
                        }

                        &::after{
                            content: '';
                            position: absolute;
                            left: 0;
                            top: 0;
                            width: 8px;
                            height: 8px;
                            background: #eaeaea;
                            margin-top: 11px;
                        }
                    }
                }

                .newgame_zhuanti{
                    width: 100%;
                    height: 230px;

                    position: absolute;
                    bottom: 31px;

                    &_head{

                        width: 100%;
                        height: 35px;
                        border-bottom: 1px solid #e8e8e8;


                        span{

                            &:nth-child(1){
                                width: 6px;
                                height: 18px;
                                border-radius: 6px;
                                background: #f76341;
                                float: left;
                            }

                            &:nth-child(2){
                                font-size: 18px;
                                font-weight: bold;
                                color: rgb(18, 18, 18);
                                float: left;
                                line-height: 19px;
                                margin-left: 5px;
                            }

                            &:nth-child(3){
                                font-size: 16px;
                                font-weight: bold;
                                float: right;
                                line-height: 19px;
                                margin-left: 5px;

                                a{
                                    color: #7d7d7d;

                                    &:hover{
                                        color: red;
                                    }
                                }
                            }
                        }
                    }

                    ul{
                        width: 100%;
                        height: 185px;
                        margin-top: 0;

                        li{
                            width: 123px;
                            height: 162px;
                            background: olive;
                            float: left;
                            margin-top: 20px;
                            border-radius: 10px;
                            overflow: hidden;
                            text-indent: 0;

                            img{
                                width: 100%;
                                transition: all .3s;
                            }


                            span{

                                &:nth-child(2){
                                    display: block;
                                    width: 100%;
                                    height: 20px;
                                    position: absolute;
                                    z-index: 888;
                                    bottom: 0;
                                    text-align: center;
                                    font-size: 14px;
                                    font-weight: bold;
                                    color: #fff;
                                    line-height: 20px;
                                }
                                &:nth-child(3){
                                    display: block;
                                    width: 100%;
                                    height: 40px;
                                    position: absolute;
                                    z-index: 777;
                                    bottom: 0;
                                    background: linear-gradient(2deg,rgb(22, 21, 21),rgba(255, 255, 255, 0));

                                }
                            }

                            &:nth-child(2){
                                float: right;
                            }

                            &:hover{
                                img{
                                    transform: scale(1.2);
                                }
                            }


                            &::after{
                                display: none;
                            }
                        }
                    }
                }
            }
        }

        .buy{
            width: 100%;
            height: 515px;
            margin-top: 20px;

            &_left{
                width: 850px;
                height: 100%;
                float: left;
                position: relative;

                .today{
                    width: 382px;
                    height: 370px;
                    position: absolute;
                    left: 0;
                    top: 0;

                    &_head{
                        @head()
                    }

                    ul{
                        width: 100%;
                        height: 334px;

                        li{
                            width: 185px;
                            height: 295px;
                            float: left;
                            border-radius: 10px;
                            overflow: hidden;
                            margin-top: 20px;
                            position: relative;

                            p{

                                &:nth-child(1){
                                    img{
                                        width: 100%;
                                        filter: brightness(150%);
                                        transition: all .3s;
                                    }
                                }
                                &:nth-child(2){
                                    width: 100%;
                                    height: 100%;
                                    position: absolute;
                                    background: #00000059;
                                    top: 0;
                                }
                                &:nth-child(3){
                                    position: absolute;
                                    z-index: 999;
                                    top: 10%;
                                    font-weight: bold;
                                    font-size: 16px;
                                    color: #fff;
                                    left: 24%;
                                }
                                &:nth-child(4){
                                    position: absolute;
                                    z-index: 999;
                                    top: 50%;
                                    left: 16%;
                                    font-weight: bold;
                                    font-size: 32px;
                                    color: #13e840;
                                }
                                &:nth-child(5){
                                    position: absolute;
                                    width: 112px;
                                    height: 36px;
                                    background: rgb(12, 11, 11);
                                    bottom: 10%;
                                    left: 17%;
                                    border-radius: 36px;
                                    border: 3px solid #ff4a1a;

                                    a{
                                        color: #ff4a1a;
                                        line-height: 37px;
                                        width: 100%;
                                        height: 100%;
                                        display: block;
                                    }
                                }

                                &:nth-child(6){
                                    position: absolute;
                                    top: 20%;
                                    left: 24%;
                                    font-size: 12px;
                                    color: #fff;
                                }
                            }

                            &:nth-child(2){
                                float: right;
                            }

                            &:hover{
                                img{
                                    transform: scale(1.2);
                                }
                            }
                        }
                    }
                }
                .all_play{
                    width: 448px;
                    height: 370px;
                    position: absolute;
                    right: 0;
                    top: 0;

                    &_head{
                        @head()
                    }

                    ul{
                        width: 100%;
                        height: 80%;
                        margin-top: 20px;

                        li{
                            width: 208px;
                            height: 140px;
                            float: left;
                            box-shadow: 0px 0px 8px 0px rgba(214,214,214,0.8);
                            border-radius: 10px;
                            overflow: hidden;

                            p{
                                &:nth-child(1){
                                    width: 100%;
                                    height: 98px;
                                    position: relative;

                                    img{
                                        width: 100%;
                                    }
                                    b{
                                        display: none;
                                        position: absolute;
                                        width: 100%;
                                        height: 100%;
                                        background: #fff;
                                        z-index: 999;
                                        top: 0;
                                        font-weight: normal;

                                        span{
                                            display: block;


                                            &:nth-child(1){
                                                font-size: 14px;
                                                margin-top: 10px;
                                                overflow: hidden;
                                                width: 100%;
                                                height: 20px;
                                            }
                                            &:nth-child(2){
                                                font-size: 14px;
                                                margin-top: 5px;
                                                font-size: 13px;
                                            }
                                            &:nth-child(3){
                                                width: 90px;
                                                height: 28px;
                                                border: 2px solid red;
                                                border-radius: 15px;
                                                line-height: 28px;
                                                color: #ee4c21;
                                                margin-top: 12px;
                                                margin-left: 59px;


                                                &:hover{
                                                    background: #ee4c21;
                                                    color: #fff;
                                                }

                                            }
                                        }
                                    }
                                }
                                &:nth-child(2){
                                    width: 100%;
                                    height: 42px;
                                    background: #fff;

                                    span{
                                        display: block;
                                        float: left;

                                        &:nth-child(1){
                                            width: 50px;
                                            height: 28px;
                                            background: #80c562;
                                            line-height: 28px;
                                            color: #fff;
                                            margin-top: 6px;

                                        }
                                        &:nth-child(2){
                                            color: #f76341;
                                            margin-top: 10px;
                                            margin-left: 10px;
                                            font-size: 16px;
                                            font-weight: bold;

                                        }
                                        &:nth-child(3){
                                            color: #b3b3b3;
                                            margin-top: 12px;
                                            margin-left: 22px;
                                            font-size: 13px;
                                            font-weight: bold;
                                            text-decoration: line-through 2px;

                                        }
                                    }
                                }
                            }

                            &:nth-child(2n){
                                float: right;
                            }

                            &:nth-child(3){
                                margin-top: 15px;
                            }
                            &:nth-child(4){
                                margin-top: 15px;
                            }

                            &:hover{
                                a{
                                    color: #000;
                                }

                                p{
                                    b{
                                        display: block;
                                    }
                                }

                            }
                        }
                    }
                }
                .cabinet{
                    width: 100%;
                    height: 125px;
                    position: absolute;
                    bottom: 0;

                    ul{
                        width: 100%;
                        height: 100%;

                        li{
                            float: left;
                            overflow: hidden;

                            img{
                                width: 100%;

                                transition: all .3s;
                            }

                            &:nth-child(1){
                                width: 269px;
                                height: 125px;
                                border-radius: 10px;
                            }
                            &:nth-child(2){
                                width: 269px;
                                height: 125px;
                                border-radius: 10px;
                                margin-left: 21px;
                            }
                            &:nth-child(3){
                                width: 269px;
                                height: 125px;
                                border-radius: 10px;
                                float: right;
                            }

                            &:hover{
                                img{
                                    transform: scale(1.2);
                                }
                            }
                        }
                    }
                }
            }

            &_right{
                width: 281px;
                height: 100%;
                float: right;

                &_head{
                    @head()
                }
                ul{
                    width: 100%;
                    height: 450px;
                    margin-top: 20px;

                    li{
                        width: 100%;
                        margin-top: 5px;

                        .title{
                            width: 100%;
                            height: 44px;
                            border-bottom: 1px solid #e8e8e8;

                            span{
                                float: left;
                                font-size: 15px;
                                margin-top: 10px;

                                &:nth-child(2){
                                    display: block;
                                    width: 40px;
                                    height: 21px;
                                    float: right;
                                    background: url('../../img/indexicon.png') no-repeat;
                                    background-position: -377px -166px;
                                }
                            }
                        }

                        .content{
                            width: 100%;
                            height: 126px;
                            box-shadow: 0px 0px 10px 0px rgba(218,207,204,0.6);
                            border-radius: 10px;
                            position: relative;

                            p{
                                position: absolute;

                                &:nth-child(1){
                                    height: 41px;
                                    left: 0;
                                    top: 0;
                                    margin-left: 10px;
                                    border-bottom: @border-bottom;
                                    line-height: 41px;
                                    font-size: 15px;
                                    font-weight: bold;


                                }
                                &:nth-child(2){
                                    width: 40px;
                                    height: 21px;
                                    background: red;
                                    right: 0;
                                    top: 0;
                                    margin-right: 10px;
                                    margin-top: 10px;
                                    background: url('../../img/indexicon.png') no-repeat;
                                    background-position: -377px -166px;
                                }
                                &:nth-child(3){
                                    width: 152px;
                                    height: 66px;
                                    left: 0;
                                    bottom: 0;
                                    margin-left: 10px;
                                    overflow: hidden;

                                    span{
                                        font-size: 14px;
                                        width: 100%;
                                        overflow: hidden;
                                        height: 30%;
                                        display: block;
                                        text-align: left;
                                    }
                                }
                                &:nth-child(4){
                                    width: 69px;
                                    height: 81px;
                                    right: 0;
                                    bottom: 0;
                                    margin-right: 10px;

                                    span{
                                        display: block;
                                        width: 100%;
                                        height: 23px;
                                        line-height: 23px;
                                        margin-top: 10px;
                                        border: 2px solid @bg-color;
                                        border-radius: 20px;
                                        font-size: 14px;
                                        color: @bg-color;

                                        a{
                                            color: @bg-color;
                                        }


                                        &:nth-child(1){
                                            margin-top: 10px;
                                        }
                                    }
                                }
                            }
                        }

                        &:last-child{
                            .title{
                                border: none;
                            }
                        }
                    }
                }
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
