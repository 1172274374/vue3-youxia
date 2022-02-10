<!-- @format -->

<template>
    <div class="content">
        <div class="section_left">
            <div class="sl_1">
                <div v-for="(item,i) in data1" :key="i" :class="['sl_1_rotation',{'active': i == index}]">
                    <img :src="item.img" alt="" />
                    <p>{{item.title}}</p>
                </div>

                <div class="sl_1_left"></div>
                <div class="sl_1_right"></div>
            </div>
            <div class="sl_2">
                <div class="toggle_bar">
                    <span class="toggle_bar_li one" @mouseenter="toggle">游戏测评</span>
                    <span class="toggle_bar_li two" @mouseenter="toggle">游戏前瞻</span>
                    <span class="toggle_bar_li" @mouseenter="toggle">数据助手</span>
                    <div class="bar"></div>
                </div>
                <div class="toggle_content">
                    <div :class="['toggle_one',{'active': bar == 1}]">
                        <ul>
                            <li v-for="(item,i) in data2" :key="i">
                                <div class="li_img">
                                    <a :href="item.href">
                                        <img :src="item.img" alt="" />
                                    </a>
                                </div>
                                <div class="li_title">
                                    <p class="p1">{{item.name}}</p>
                                    <p class="p2">{{item.xijie}}</p>
                                </div>
                                <div class="li_num">
                                    <p>
                                        <span>{{item.number}}.</span>2
                                    </p>
                                    <h5>佳作</h5>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div :class="['toggle_two',{'active': bar == 2}]">
                        <ul>
                            <li>
                                <h3>2021年12月游戏发售表【游侠攻略组】</h3>
                                <div><img src="../../img/2021112653303273.jpg" alt="" /></div>
                                <p>随着年终的到来，12月发售的大作也没前几个月那么多了。</p>
                            </li>
                            <li v-for="(item,i) in data3" :key="i">
                                <a :href="item.href">{{item.name}}</a>
                            </li>
                        </ul>
                    </div>
                    <div :class="['toggle_three',{'active': bar == 3}]">
                        <div class="sjzx hide" @mouseenter="changeSJ">
                            <div class="sjzx_img"><img src="@\img\2021090841349317.png" alt="" /></div>
                            <b>《金铲铲之战》阵容模拟</b>
                            <div class="sjzx_icon">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-zhuanti"></use>
                                </svg>
                            </div>
                        </div>
                        <div class="sjzx_b">
                            <a href="https://m.ali213.net/wiki/jcczz/zrmn.html">
                                <img src="@\img\2021090841542724.jpg" alt="" />
                                <div class="goto">前往查看</div>
                            </a>
                        </div>

                        <div class="sjzx" @mouseenter="changeSJ">
                            <div class="sjzx_img"><img src="@\img\2021070835406702.png" alt="" /></div>
                            <b>《永劫无间》战绩查询</b>
                            <div class="sjzx_icon">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-zhuanti"></use>
                                </svg>
                            </div>
                        </div>
                        <div class="sjzx_b hide">
                            <img src="@\img\2021070835302740.png" alt="" />
                            <div class="goto">前往查看</div>
                        </div>
                        <div class="sjzx" @mouseenter="changeSJ">
                            <div class="sjzx_img"><img src="@\img\20200915114205391.png" alt="" /></div>
                            <b>《原神》互动地图</b>
                            <div class="sjzx_icon">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-zhuanti"></use>
                                </svg>
                            </div>
                        </div>
                        <div class="sjzx_b hide">
                            <img src="@\img\20200915115040229.jpg" alt="" />
                            <div class="goto">前往查看</div>
                        </div>
                        <div class="sjzx" @mouseenter="changeSJ">
                            <div class="sjzx_img"><img src="@\img\2020081895054715.png" alt="" /></div>
                            <b>《塞尔达荒野之息》互动地图</b>
                            <div class="sjzx_icon">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-zhuanti"></use>
                                </svg>
                            </div>
                        </div>
                        <div class="sjzx_b hide">
                            <img src="@/img/2020081895042994.jpg" alt="" />
                            <div class="goto">前往查看</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sl_3">
                <div class="sl_3_top">
                    <span>论坛精华</span>
                    <a href="">MORE+</a>
                </div>
                <div class="sl_3_center">
                    <div class="sl_3_center_rocation">
                        <img src="../../img/2021122215235928.jpg" alt="" :class="{'active': sl_3_rocation == 1}" />
                        <img src="../../img/2021121025650149.jpg" alt="" :class="{'active': sl_3_rocation == 2}" />
                        <img src="../../img/2021121332538441.jpg" alt="" :class="{'active': sl_3_rocation == 3}" />
                        <div class="left" @click="sl_3_toggle"></div>
                        <div class="right" @click="sl_3_toggle"></div>
                        <div class="sign">
                            <div class="sign1" @click="sign_toggle(1)"></div>
                            <div class="sign2" @click="sign_toggle(2)"></div>
                            <div class="sign3" @click="sign_toggle(3)"></div>
                        </div>
                    </div>

                    <div class="sl_3_center_title">
                        <div class="title">
                            【雷柏】参与赢取雷柏电竞游戏大礼
                            <a href=""><div class="btn_to">我要参加</div></a>
                        </div>
                        <div class="title">
                            【雷柏】参与赢取雷柏电竞游戏大礼
                            <a href=""><div class="btn_to">我要参加</div></a>
                        </div>
                        <div class="title">
                            【雷柏】参与赢取雷柏电竞游戏大礼
                            <a href=""><div class="btn_to">我要参加</div></a>
                        </div>
                    </div>
                </div>
                <div class="sl_3_bottom">
                    <div>
                        <a href="https://game.ali213.net/forum-2773-1.html">【天命奇御2】剑写奇缘</a>
                        <a href="https://game.ali213.net/forum-1891-1.html">>>帝国4区</a>
                    </div>
                    <div>
                        <a href="https://game.ali213.net/forum-2691-1.html">【暗黑2】重制版再续前缘</a>
                        <a href="https://game.ali213.net/forum-2748-1.html">>> 地平线5区</a>
                    </div>
                    <div>
                        <a href="https://game.ali213.net/forum-206-1.html">【三国志14】游侠最强游戏</a>
                        <a href="http://game.ali213.net/forum-46-1.html">>> 综合区</a>
                    </div>
                </div>
            </div>

            <div class="sl_4">
                <div class="sl_4_top">
                    <span>游戏硬件</span>
                    <a href="">MORE+</a>
                </div>
                <div class="sl_4_center">
                    <div class="sl_4_center_rocation">
                        <img src="../../img/20211213103614143.jpg" alt="" :class="{'active': sl_4_rocation == 1}" />
                        <img src="../../img/2021121013638129.png" alt="" :class="{'active': sl_4_rocation == 2}" />
                        <img src="../../img/20211222123537113.jpg" alt="" :class="{'active': sl_4_rocation == 3}" />
                        <div class="left" @click="sl_4_toggle"></div>
                        <div class="right" @click="sl_4_toggle"></div>
                    </div>
                </div>
                <div class="sl_4_bottom">
                    <a href="https://in.ali213.net/industry/202112/9480.html" target="_blank"
                        >造就护国神牛 雷柏VT960屏显双模无线RGB游戏鼠标宏驱动设置</a
                    >
                    <a href="https://in.ali213.net/industry/202112/9479.html" target="_blank"
                        >雷柏V600S手柄手游推荐境界死神激斗</a
                    >
                    <a href="https://in.ali213.net/industry/202112/9478.html" target="_blank"
                        >身无拘心不朽 雷柏V700RGB合金版幻彩背光游戏机械键盘试玩《永劫无间》</a
                    >
                </div>
            </div>

            <div class="sl_5">
                <div class="sl_5_top">
                    <span>话题探讨</span>
                    <a href="">MORE+</a>
                </div>
                <div class="sl_5_center">
                    <h3>E宝这波大骨折，有没有撬动你的钱包？</h3>
                    <p>
                        我们已经见识过了E宝的10美刀券，和首日白送的各种套路，但没想到，E宝还能给我们来点新花样……这波E宝满90-65的无限续杯优惠，你买买买了吗？
                    </p>
                </div>
                <div class="sl_5_bottom">
                    <div>
                        <span>买</span>
                        <a href="">投票</a>
                    </div>
                    <div>
                        <span>不买</span>
                        <a href="">投票</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="section_middle">
            <div class="section_middle_maintitle">
                <span class="active" @click="mainTitle_toggle">热点资讯</span>
                <span @click="mainTitle_toggle">大侠号</span>
                <span @click="mainTitle_toggle">最新汉化</span>
                <span @click="mainTitle_toggle">最新攻略</span>
                <div></div>
            </div>
            <div class="section_middle_maincontent">
                <div :class="['hot_info',{'active':maincontent==1}]">
                    <div class="hot_info_1">
                        <div class="hot_info_1_top_one">
                            <p>
                                <span>消逝的光芒2 中字演示</span>
                                <span>游侠风云榜开启</span>
                            </p>
                            <p>
                                <a href="">美女声优陪你过圣诞</a>
                                <span>|</span>
                                <a href="">《黑神话》大量信息曝光</a>
                                <span>|</span>
                                <a href="">凤凰双旦嘉年华</a>
                            </p>
                        </div>
                        <div class="hot_info_1_top_two">
                            <p>
                                <span>Epic喜加一第十弹</span>
                                <span>Steam冬促游戏推荐</span>
                            </p>
                            <p>
                                <a href="">老医生性侵21岁女孩</a>
                                <span>|</span>
                                <a href="">网红购买宝可梦卡牌</a>
                                <span>|</span>
                                <a href="">GOG"喜加五"第3弹</a>
                            </p>
                        </div>
                        <div class="hot_info_1_bottom">
                            <p>
                                <span>精选</span>
                                <span>Epic官宣：12月30日送的神秘游戏最大 并非圣诞节</span>
                                <span>00:11</span>
                            </p>
                            <p>
                                <span>精选</span>
                                <span>《双人成行》制作人:NFT永远不会在我的游戏里出现</span>
                                <span>12:25</span>
                            </p>
                            <p>
                                <span>精选</span>
                                <span>轻松调视角！《最终幻想7：重制版》FOV视角MOD</span>
                                <span>12:25</span>
                            </p>
                            <p>
                                <span>精选</span>
                                <span>《古墓丽影：暗影》新视频公开两个未实装机制</span>
                                <span>12:25</span>
                            </p>
                            <p>
                                <span>精选</span>
                                <span>《大镖客2》细节有多震撼？燃烧瓶碎片折射火光</span>
                                <span>12:21</span>
                            </p>
                        </div>
                    </div>
                    <div class="hot_info_2">
                        <div class="hot_info_2_list" v-for="(item,i) in zhixun_title" :key="i">
                            <div class="title">
                                <span></span>
                                <a :href="item.href" target="_blank"
                                    ><p>{{item.title}}</p></a
                                >
                            </div>
                            <div class="content">
                                <p v-for="(data,index) in zhixun_content[`zhixun${i+1}`]" :key="index">
                                    <span></span>
                                    <span
                                        ><a :href="data.href" target="_blank">{{data.title}}</a></span
                                    >
                                    <span>{{data.date}}</span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="sign">
                        <span class="reduce" @click="zhixun_toggle"></span>
                        <span class="zhixun_sign"></span>
                        <span class="zhixun_sign"></span>
                        <span class="zhixun_sign"></span>
                        <span class="add" @click="zhixun_toggle"></span>
                    </div>
                </div>
                <div :class="['daxia',{'active':maincontent==2}]">
                    <div class="daxia_page" v-for="(item,i) in daxia" :key="i">
                        <i></i>
                        <div class="daxia_page_1">
                            <div class="title">{{item.title}}</div>
                            <div class="content">
                                <a :href="item.href" target="_blank"
                                    ><div><img :src="item.img" alt="" /></div
                                ></a>
                                <p>{{item.simple_into}}</p>
                            </div>
                            <div class="introd">
                                <span>{{item.writer}}</span>
                                <span>订阅</span>
                            </div>
                        </div>
                    </div>

                    <div class="daxia_sign">
                        <span class="reduce" @click="content_sign_toggle"></span>
                        <span class="daxia_sign1"></span>
                        <span class="daxia_sign1"></span>
                        <span class="daxia_sign1"></span>
                        <span class="add" @click="content_sign_toggle"></span>
                    </div>
                </div>
                <div :class="['new_hanhua',{'active':maincontent==3}]">3</div>
                <div :class="['introduction',{'active':maincontent==4}]">4</div>
            </div>
            <div class="section_middle_bottomcontent">
                <el-card class="box-card">
                    <div class="head">
                        <span :class="{'active':bottomcontent_num==0}" @click="change_bottomcontent_num(0)"
                            >重点回顾</span
                        >
                        <span :class="{'active':bottomcontent_num==1}" @click="change_bottomcontent_num(1)"
                            >热门讨论</span
                        >
                    </div>
                    <ul v-show="bottomcontent_num == 0">
                        <li>
                            <span></span>
                            <span
                                ><a href="https://www.ali213.net/news/html/2022-1/651257.html"
                                    >6人耗费10个月制作RTS+塔防建造+肉鸽的FPS游戏！</a
                                ></span
                            >
                            <span>
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-eye"></use>
                                </svg>
                            </span>
                            <span>{{(Math.random()*200).toFixed(1)}}K</span>
                        </li>
                        <li>
                            <span></span>
                            <span
                                ><a href="https://www.ali213.net/news/html/2022-1/651245.html"
                                    >Steam每日特惠：《大表哥2》半价《文明6》只要29元！</a
                                ></span
                            >
                            <span>
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-eye"></use>
                                </svg>
                            </span>
                            <span>{{(Math.random()*200).toFixed(1)}}K</span>
                        </li>
                        <li>
                            <span></span>
                            <span
                                ><a href="https://www.ali213.net/news/html/2022-1/651293.html"
                                    >微软收购动视暴雪的沙雕图 已经火的满地都是了</a
                                ></span
                            >
                            <span>
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-eye"></use>
                                </svg>
                            </span>
                            <span>{{(Math.random()*200).toFixed(1)}}K</span>
                        </li>
                        <li>
                            <span></span>
                            <span
                                ><a href="https://www.ali213.net/news/html/2022-1/651229.html"
                                    >PC玩家梦里笑醒！又有一款PS独占游戏或将登陆PC！</a
                                ></span
                            >
                            <span>
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-eye"></use>
                                </svg>
                            </span>
                            <span>{{(Math.random()*200).toFixed(1)}}K</span>
                        </li>
                    </ul>
                    <ul v-show="bottomcontent_num == 1">
                        <li>
                            <span></span>
                            <span
                                ><a href="https://www.ali213.net/news/html/2022-1/650907.html"
                                    >Epic喜加一：《瑞利达》免费领！下周送《机甲战魔》</a
                                ></span
                            >
                            <span>
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-eye"></use>
                                </svg>
                            </span>
                            <span>{{(Math.random()*200).toFixed(1)}}K</span>
                        </li>
                        <li>
                            <span></span>
                            <span
                                ><a href="https://www.ali213.net/news/html/2022-1/650963.html"
                                    >令人欲罢不能的黑丝！《女神假期》联动皮肤美图分享</a
                                ></span
                            >
                            <span>
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-eye"></use>
                                </svg>
                            </span>
                            <span>{{(Math.random()*200).toFixed(1)}}K</span>
                        </li>
                        <li>
                            <span></span>
                            <span
                                ><a href="https://www.ali213.net/news/html/2022-1/651187.html"
                                    >《战神4》同以“神”为主题!盘点5款Steam“神”游戏</a
                                ></span
                            >
                            <span>
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-eye"></use>
                                </svg>
                            </span>
                            <span>{{(Math.random()*200).toFixed(1)}}K</span>
                        </li>
                        <li>
                            <span></span>
                            <span
                                ><a href="https://www.ali213.net/news/html/2022-1/651027.html"
                                    >笑得蚌埠住了！机智网友为PC版《战神》狂整活！</a
                                ></span
                            >
                            <span>
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-eye"></use>
                                </svg>
                            </span>
                            <span>{{(Math.random()*200).toFixed(1)}}K</span>
                        </li>
                    </ul>
                </el-card>
            </div>
        </div>
        <div class="section_right">
            <div class="section_right_advert">
                <img src="https://pbmp.ali213.net/Pics/2022/index_qtz534_300c425.jpg" alt="" />
            </div>
            <div class="section_right_newload">
                <el-card class="box-card" shadow="always">
                    <template #header>
                        <div class="card-header">
                            <span></span>
                            <span>最新下载</span>
                            <span>MORE+</span>
                        </div>
                    </template>
                    <div class="newdown_title" @mouseenter="newDown">
                        <span>新</span>
                        <span>严阵以待</span>
                        <span>绿色英文</span>
                    </div>
                    <div class="newdown_card">
                        <img src="https://imgs.ali213.net/IndexTJ/2022/01/07/20220107121250999.jpg" alt="" />
                        <a href="https://down.ali213.net/pcgame/readyornot.html" target="_blank">
                            <div>
                                <h4>严阵以待</h4>
                                <p>动作射击STG</p>
                                <div class="tag">单人单机、3D画面、支持手柄、中级水平、射击</div>
                            </div>
                        </a>
                    </div>
                    <div class="newdown_title" @mouseenter="newDown">
                        <span>新</span>
                        <span>真三国无双8：帝国</span>
                        <span>官方中文</span>
                    </div>
                    <div class="newdown_card">
                        <img src="https://imgs.ali213.net/IndexTJ/2021/12/23/20211223105758733.jpg" alt="" />
                        <div>
                            <h4>真三国无双8：帝国</h4>
                            <p>动作游戏ACT</p>
                            <div class="tag">单人单机、3D画面、不支持手柄、菜鸟入门、三国</div>
                        </div>
                    </div>
                    <div class="newdown_title" @mouseenter="newDown">
                        <span>新</span>
                        <span>最终幻想7：重制版</span>
                        <span>官方中文</span>
                    </div>
                    <div class="newdown_card">
                        <img src="https://imgs.ali213.net/IndexTJ/2021/12/17/2021121792649526.jpg" alt="" />
                        <div>
                            <h4>最终幻想7：重制版</h4>
                            <p>角色扮演RPG</p>
                            <div class="tag">单人单机、3D画面、不支持手柄、中级水平、RPG、日系</div>
                        </div>
                    </div>
                    <div class="newdown_title" @mouseenter="newDown">
                        <span>新</span>
                        <span>超级人类</span>
                        <span>官方中文</span>
                    </div>
                    <div class="newdown_card">
                        <img src="https://imgs.ali213.net/IndexTJ/2021/12/13/2021121370021373.jpg" alt="" />
                        <div>
                            <h4>超级人类</h4>
                            <p>第一人称射击FPS</p>
                            <div class="tag">多人联机、3D画面、不支持手柄、中级水平、射击、科幻</div>
                        </div>
                    </div>
                    <div class="newdown_title" @mouseenter="newDown">
                        <span>新</span>
                        <span>光环：无限</span>
                        <span>官方中文</span>
                    </div>
                    <div class="newdown_card">
                        <img src="https://imgs.ali213.net/IndexTJ/2021/11/16/202111164144760.jpg" alt="" />
                        <div>
                            <h4>光环：无限</h4>
                            <p>第一人称射击FPS</p>
                            <div class="tag">单人单机、3D画面、支持手柄、中级水平、射击</div>
                        </div>
                    </div>
                    <div class="newdown_title" @mouseenter="newDown">
                        <span>新</span>
                        <span>翼星求生</span>
                        <span>官方中文</span>
                    </div>
                    <div class="newdown_card">
                        <img src="https://imgs.ali213.net/IndexTJ/2021/12/05/202112057574530.jpg" alt="" />
                        <div>
                            <h4>翼星求生</h4>
                            <p>冒险解谜AVG</p>
                            <div class="tag">单人单机、3D画面、不支持手柄、中级水平、模拟、冒险</div>
                        </div>
                    </div>
                    <div class="newdown_title" @mouseenter="newDown">
                        <span>新</span>
                        <span>天命奇御二</span>
                        <span>官方中文</span>
                    </div>
                    <div class="newdown_card">
                        <img src="https://imgs.ali213.net/IndexTJ/2021/11/22/20211122103623286.jpg" alt="" />
                        <div>
                            <h4>天命奇御二</h4>
                            <p>动作游戏ACT</p>
                            <div class="tag">单人单机、3D画面、支持手柄、中级水平、国产、武侠</div>
                        </div>
                    </div>
                    <div class="newdown_title" @mouseenter="newDown">
                        <span>新</span>
                        <span>GTA三部曲：终极版</span>
                        <span>官方中文</span>
                    </div>
                    <div class="newdown_card">
                        <img src="https://imgs.ali213.net/IndexTJ/2021/11/12/2021111220946544.jpg" alt="" />
                        <div>
                            <h4>GTA三部曲：终极版</h4>
                            <p>动作游戏ACT</p>
                            <div class="tag">单人单机、3D画面、支持手柄、中级水平</div>
                        </div>
                    </div>
                    <div class="newdown_title" @mouseenter="newDown">
                        <span>新</span>
                        <span>最后的战役：劫后余生</span>
                        <span>官方中文</span>
                    </div>
                    <div class="newdown_card">
                        <img src="https://imgs.ali213.net/IndexTJ/2021/11/18/2021111870324345.jpg" alt="" />
                        <div>
                            <h4>最后的战役：劫后余生</h4>
                            <p>动作游戏ACT</p>
                            <div class="tag">单人单机、3D画面、不支持手柄、中级水平、冒险、射击</div>
                        </div>
                    </div>
                </el-card>
            </div>
            <div class="section_right_soonComing">
                <el-card class="box-card" shadow="always">
                    <template #header>
                        <div class="card-header">
                            <span></span>
                            <span>即将上市</span>
                            <span>MORE+</span>
                        </div>
                    </template>
                    <div class="news_card">
                        <p class="news_date">发售日期：2022-01-13</p>
                        <a href="https://0day.ali213.net/html/2020/48175.html" target="_blank">
                            <div class="news_card_img">
                                <img
                                    src="https://imgs.ali213.net/oday/uploadfile/2021/03/22/2021032231317579.jpg"
                                    alt=""
                                />
                                <p>怪物猎人：崛起</p>
                            </div>
                        </a>
                        <div class="dot"></div>
                    </div>
                    <div class="news_card">
                        <p class="news_date">发售日期：2022-01-15</p>
                        <a href="https://0day.ali213.net/html/2012/8141.html" target="_blank">
                            <div class="news_card_img">
                                <img
                                    src="https://imgs.ali213.net/oday/uploadfile/2021/11/25/2021112592932393.jpg"
                                    alt=""
                                />
                                <p>战神4</p>
                            </div>
                        </a>
                        <div class="dot"></div>
                    </div>
                    <div class="news_card">
                        <p class="news_date">发售日期：2022-01-19</p>
                        <a href="https://0day.ali213.net/html/2018/37619.html" target="_blank">
                            <div class="news_card_img">
                                <img
                                    src="https://imgs.ali213.net/oday/uploadfile/2021/06/09/20210609115744211.jpg"
                                    alt=""
                                />
                                <p>伊苏9</p>
                            </div>
                        </a>
                        <div class="dot"></div>
                    </div>
                    <div class="news_card">
                        <p class="news_date">发售日期：2022-01-20</p>
                        <a href="https://0day.ali213.net/html/2019/40229.html" target="_blank">
                            <div class="news_card_img">
                                <img
                                    src="https://imgs.ali213.net/oday/uploadfile/2022/01/06/2022010632928819.jpg"
                                    alt=""
                                />
                                <p>彩虹六号：异种</p>
                            </div>
                        </a>
                        <div class="dot"></div>
                    </div>
                    <div class="news_card">
                        <p class="news_date">发售日期：2022-01-26</p>
                        <a href="https://0day.ali213.net/html/2022/61897.html" target="_blank">
                            <div class="news_card_img">
                                <img
                                    src="https://imgs.ali213.net/oday/uploadfile/2021/03/22/2021032231317579.jpg"
                                    alt=""
                                />
                                <p>英雄萨姆：西伯利亚狂想曲</p>
                            </div>
                        </a>
                        <div class="dot"></div>
                    </div>
                </el-card>
            </div>
        </div>
    </div>
</template>

<script lang="ts">
    import {defineComponent, onBeforeMount,onMounted,reactive,toRefs,watch} from 'vue'
    import {getRocation,getCePin,getProSpect,getZhiXun} from '@/api/youxi_ax'

    export default defineComponent({
        setup(){

            let state = reactive({
                data1:[],
                data2:[],
                data3:[],
                index:0,
                bar:1,
                sl_3_rocation:1,
                sl_4_rocation:1,
                number:1,
                zhixun:[],
                zhixun_title:[],
                zhixun_content:{
                    zhixun1:[],
                    zhixun2:[],
                    zhixun3:[],
                    zhixun4:[],
                    zhixun5:[],
                    zhixun6:[],
                },
                maincontent:1,
                daxia:[],
                daxia1:[],
                daxia2:[],
                lock:false,
                bottomcontent_num:0
            })

            onBeforeMount(async ()=>{
                //后端获取测评数据
                let data = await getCePin()
                state.data2 = data.data

                let data1 = await getRocation()
                state.data1 = data1.data

                let data3 = await getProSpect()
                state.data3 = data3.data

                let zhixun = await getZhiXun(state.number)
                state.zhixun = zhixun.data

                let daxia= await getZhiXun(state.number+3)
                state.daxia = daxia.data.slice(0,6)
                state.daxia1 = daxia.data.slice(6,12)
                state.daxia2 = daxia.data.slice(12,18)

                state.zhixun_content.zhixun1 = state.zhixun.slice(0,4)
                state.zhixun_content.zhixun2 = state.zhixun.slice(4,8)
                state.zhixun_content.zhixun3 = state.zhixun.slice(8,12)
                state.zhixun_content.zhixun4 = state.zhixun.slice(12,16)
                state.zhixun_content.zhixun5 = state.zhixun.slice(16,20)
                state.zhixun_content.zhixun6 = state.zhixun.slice(20,24)

                state.zhixun_title = state.zhixun.slice(0,6)



            })



            onMounted(()=>{
                let to_left: any = document.querySelector('.sl_1_left')
                let to_right: any = document.querySelector('.sl_1_right')


                to_left.onclick = function(){
                    state.index++
                    if(state.index > 4){
                        state.index = 0
                    }
                }

                to_right.onclick = function(){
                    state.index--
                    if(state.index < 0){
                        state.index = 4
                    }
                }

                let newdown_card = document.querySelectorAll('.newdown_card')
                newdown_card.forEach((item:any,i: number)=>{
                    if(i == 0) return
                    item.classList = 'newdown_card hide'
                })


            })




            watch(()=>state.number,async ()=>{
                let zhixun = await getZhiXun(state.number)
                state.zhixun = zhixun.data

                let daxia = await getZhiXun(state.number+3)
                state.daxia = daxia.data.slice(0,6)
                state.daxia1 = daxia.data.slice(6,12)
                state.daxia2 = daxia.data.slice(12,18)

                state.zhixun_content.zhixun1 = state.zhixun.slice(0,4)
                state.zhixun_content.zhixun2 = state.zhixun.slice(4,8)
                state.zhixun_content.zhixun3 = state.zhixun.slice(8,12)
                state.zhixun_content.zhixun4 = state.zhixun.slice(12,16)
                state.zhixun_content.zhixun5 = state.zhixun.slice(16,20)
                state.zhixun_content.zhixun6 = state.zhixun.slice(20,24)

                state.zhixun_title = state.zhixun.slice(0,6)


            })




            function toggle(e: any) {
                let bar: HTMLDivElement = document.querySelector('.bar') as HTMLDivElement
                if(e.srcElement.classList.contains('one') == true){
                    state.bar = 1
                    bar.style.left = 45 + 'px'

                }else if(e.srcElement.classList.contains('two')){
                    state.bar = 2
                    bar.style.left = 155 + 'px'
                }else{
                    state.bar = 3
                    bar.style.left = 265 + 'px'
                }
            }

            function changeSJ(e: any) {
                const sjzx_b: any = document.querySelectorAll('.sjzx_b')
                const sjzx: any = document.querySelectorAll('.sjzx')
                sjzx_b.forEach((item: any)=>{
                    item.classList = 'sjzx_b hide'
                })

                sjzx.forEach((item: any)=>{
                    item.classList = 'sjzx'
                })

                e.target.nextSibling.classList = 'sjzx_b'
                e.target.classList = 'sjzx hide'
            }

            function sl_3_toggle(e: any){

                if(e.target.classList.contains('left')){
                    state.sl_3_rocation--
                    if(state.sl_3_rocation<1){
                        state.sl_3_rocation = 3
                    }

                }else{
                    state.sl_3_rocation++
                    if(state.sl_3_rocation>3){
                        state.sl_3_rocation = 1
                    }
                }

                sign_click()

            }

            function sl_4_toggle(e: any){

                if(e.target.classList.contains('left')){
                    state.sl_4_rocation--
                    if(state.sl_4_rocation<1){
                        state.sl_4_rocation = 3
                    }

                }else{
                    state.sl_4_rocation++
                    if(state.sl_4_rocation>3){
                        state.sl_4_rocation = 1
                    }
                }

            }

            function content_sign_toggle(e: any){

                let daxia_sign: any = document.querySelectorAll('.daxia_sign1')

                // document.documentElement.scrollTop = 1100

                if(e.target.classList.contains('add')){
                    state.number++
                    if(state.number>3){
                        state.number = 1
                    }

                    daxia_sign.forEach((item: any)=>{
                        item.style.background = '#878585'
                    })

                    daxia_sign[state.number-1].style.background = 'salmon'



                }else{
                    state.number--
                    if(state.number<1){
                        state.number = 3
                    }

                    daxia_sign.forEach((item: any)=>{
                        item.style.background = '#878585'
                    })

                    daxia_sign[state.number-1].style.background = 'salmon'
                }
            }


            function zhixun_toggle(e: any){

                const zhixun_sign: any = document.querySelectorAll('.zhixun_sign')

                document.documentElement.scrollTop = 1100

                if(e.target.classList.contains('add')){
                    state.number++
                    if(state.number>3){
                        state.number = 1
                    }

                    zhixun_sign.forEach((item: any)=>{
                        item.style.background = '#878585'
                    })

                    zhixun_sign[state.number-1].style.background = 'salmon'



                }else{
                    state.number--
                    if(state.number<1){
                        state.number = 3
                    }

                    zhixun_sign.forEach((item: any)=>{
                        item.style.background = '#878585'
                    })

                    zhixun_sign[state.number-1].style.background = 'salmon'
                }

            }

            function mainTitle_toggle(e: any){
                let spans = e.target.parentElement.children

                for(let i=0;i<4;i++){
                    spans[i].classList = ''
                }

                e.target.classList = 'active'

                if(spans[0].classList.contains('active')){
                    spans[4].style.left = 39 + 'px'
                    state.maincontent = 1
                }
                if(spans[1].classList.contains('active')){
                    spans[4].style.left = 162 + 'px'
                    state.maincontent = 2
                }
                if(spans[2].classList.contains('active')){
                    spans[4].style.left = 280 + 'px'
                    state.maincontent = 3
                }
                if(spans[3].classList.contains('active')){
                    spans[4].style.left = 401 + 'px'
                    state.maincontent = 4
                }
            }



            function sign_toggle(num: number){
                state.sl_3_rocation = num

                sign_click()
            }

            function sign_click(){

                let sign1: HTMLDivElement = document.querySelector('.sign1') as HTMLDivElement
                let sign2: HTMLDivElement = document.querySelector('.sign2') as HTMLDivElement
                let sign3: HTMLDivElement = document.querySelector('.sign3') as HTMLDivElement
                if(state.sl_3_rocation == 1){
                    sign1.style.width = 30 + 'px'
                    sign2.style.width = 15 + 'px'
                    sign3.style.width = 15 + 'px'
                }else if(state.sl_3_rocation == 2){
                    sign1.style.width = 15 + 'px'
                    sign2.style.width = 30 + 'px'
                    sign3.style.width = 15 + 'px'
                }else{
                    sign1.style.width = 15 + 'px'
                    sign2.style.width = 15 + 'px'
                    sign3.style.width = 30 + 'px'
                }
            }

            function newDown(e: any){

                let newdown_card = document.querySelectorAll('.newdown_card')
                newdown_card.forEach((item: any)=>{

                    item.classList = 'newdown_card hide'
                })

                e.target.nextSibling.classList = 'newdown_card'

            }

            function change_bottomcontent_num(val: number){
                state.bottomcontent_num = val
            }



            return{...toRefs(state),toggle,changeSJ,sl_3_toggle,sign_toggle,sl_4_toggle,zhixun_toggle
                    ,mainTitle_toggle,content_sign_toggle,newDown,change_bottomcontent_num}
        },

    })
</script>

<style lang="less" scoped>
    .content{
        width: 1200px;
        height: 1925px;
        // background: red;
        margin: 30px auto;

        .section_left{
            width: 370px;
            height: 100%;
            // background: greenyellow;
            float: left;

            .sl_1{
                position: relative;
                overflow: hidden;
                width: 371px;
                height: 291px;
                border-radius: 10px;

                &:hover{
                    .sl_1_left{
                        left: 0;
                    }
                    .sl_1_right{
                        right: 0;
                    }

                    .sl_1_rotation{
                        img{
                            transform: scale(1.2);
                        }
                    }
                }





                .sl_1_rotation{
                    position: absolute;
                    width: 371px;
                    height: 291px;
                    display: none;


                    img{
                        width: 100%;

                        box-shadow: 0px 0px 10px 0px rgba(218,207,204,0.6);
                        transition: all .3s;
                    }
                    p{
                        position: absolute;
                        width: 371px;
                        height: 50px;
                        // background: rgb(230, 9, 119);
                        z-index: 99;
                        bottom: 0;
                        line-height: 50px;
                        font-size: 16px;
                        color: #fff;
                        font-weight: bold;
                        user-select: none;
                    }
                }


                .active{
                    display: block;
                }


                .sl_1_left{
                    position: absolute;
                    background: url('../../img/L.png') no-repeat  center center;
                    width: 50px;
                    height: 50px;
                    left: -60px;
                    top: 40%;
                    transition: all .3s;
                }
                .sl_1_right{
                    position: absolute;
                    background: url('../../img/R.png') no-repeat  center center;
                    width: 50px;
                    height: 50px;
                    right: -60px;
                    top: 40%;
                    transition: all .3s;
                }
            }

            .sl_2{
                width: 100%;
                height: 500px;
                background: #fff;
                margin: 30px 0;
                border-radius: 10px;
                position: relative;
                box-shadow: 0px 0px 10px 0px rgba(218,207,204,0.6);

                .toggle_bar{
                    width: 100%;
                    height: 60px;
                    background: #f8f8f8;
                    border-radius: 10px 10px 0 0;
                    box-shadow: 0px 0px 10px 0px rgba(218,207,204,0.6);
                    position: relative;
                    cursor: pointer;

                    .toggle_bar_li{
                        display: inline-block;
                        width: 90px;
                        height: 100%;
                        line-height: 60px;
                        font-size: 18px;
                        margin: 0 10px;
                        user-select: none;
                    }

                    .bar{
                        width: 60px;
                        height: 5px;
                        background: palevioletred;
                        position: absolute;
                        bottom: 0;
                        left: 45px;
                        border-radius: 2px;
                        transition: all .3s;
                    }
                }

                .toggle_content{
                    width: 100%;
                    height: 400px;

                    position: absolute;
                    top: 80px;

                    .toggle_one{
                        width: 100%;
                        height: 100%;
                        position: absolute;
                        background: #fff;
                        z-index: 99;
                        display: none;

                        ul{
                            width: 100%;
                            height: 100%;


                            li{
                                width: 90%;
                                height: 67px;
                                margin-left: 20px;
                                margin-top: 13px;
                                border-top: 1px solid rgba(91, 89, 89, 0.115);
                                position: relative;

                                .li_img{
                                    position: absolute;
                                    width: 112px;
                                    height: 52px;

                                    left: 10px;
                                    top: 7px;

                                    img{
                                        width: 100%;
                                    }

                                }
                                .li_title{
                                    position: absolute;
                                    width: 162px;
                                    height: 52px;
                                    left: 130px;
                                    top: 7px;
                                    border-right: 1px solid rgba(91, 89, 89, 0.129);

                                    .p1{
                                        width: 100%;
                                        height: 20px;
                                        text-align: left;
                                        font-size: 14px;
                                        line-height: 20px;
                                    }
                                    .p2{
                                        width: 100%;
                                        height: 20px;
                                        text-align: left;
                                        font-size: 12px;
                                    }
                                }
                                .li_num{
                                    position: absolute;
                                    width: 62px;
                                    height: 52px;

                                    right: -20px;
                                    top: 7px;

                                    p{
                                        font-size: 16px;
                                        color: rgb(248, 88, 48);
                                        font-weight: bold;

                                        span{
                                            font-size: 30px;
                                            color: rgb(248, 88, 48);
                                            font-weight: bold;
                                        }


                                    }
                                    h5{
                                        color: rgb(248, 88, 48);
                                        font-weight: normal;
                                    }

                                }

                                &:nth-child(1){
                                    border-top: none;
                                }
                            }
                        }
                    }
                    .toggle_two{
                        width: 100%;
                        height: 100%;
                        position: absolute;
                        display: none;
                        overflow: hidden;

                        ul{
                            width: 100%;
                            height: 100%;
                            margin-left: 13px;

                            li{
                                width: 90%;
                                height: 29px;
                                // background: orchid;
                                line-height: 29px;
                                text-align: left;
                                text-indent: 10px;
                                font-size: 14px;
                                margin-top: 3px;
                                overflow: hidden;



                                &:nth-child(1){
                                    height: 114px;
                                    position: relative;
                                    text-indent: 0;
                                    user-select: none;

                                    h3{
                                        text-align: left;
                                    }

                                    div{
                                        width: 96px;
                                        height: 56px;
                                        background: peachpuff;
                                        position: absolute;
                                        bottom: 20px;

                                        img{
                                            width: 100%;
                                        }
                                    }

                                    p{
                                        position: absolute;
                                        left: 115px;
                                        width: 200px;
                                        font-size: 12px;
                                        color: rgba(186, 180, 180, 0.353);
                                    }
                                }

                                &:hover{
                                    a{
                                        color: rgb(223, 13, 13);
                                    }
                                }


                            }
                        }
                    }
                    .toggle_three{
                        width: 100%;
                        height: 100%;
                        position: absolute;
                        // background: rgb(110, 102, 102);
                        display: none;

                        .sjzx{
                            height: 65px;
                            // background: rgb(197, 103, 103);
                            position: relative;
                            user-select: none;
                            border-top: 1px solid rgba(184, 181, 181, 0.197);


                            .sjzx_img{
                                width: 43px;
                                height: 24px;
                                position: absolute;
                                top: 20px;
                                left: 40px;

                                img{
                                    width: 100%;
                                }
                            }

                            b{
                                position: absolute;
                                font-size: 14px;
                                left: 100px;
                                top: 20px;
                                color: #888;
                                letter-spacing: 1px;
                            }

                            &_icon{
                                width: 30px;
                                height: 30px;
                                // background: turquoise;
                                position: absolute;
                                right: 10px;
                                top: 15px;

                                .icon{
                                    font-size: 28px;
                                }
                            }

                            &:nth-child(1){
                                border: none;
                            }
                        }

                        .sjzx_b{
                            width: 340px;
                            height: 191px;
                            border-radius: 10px;
                            margin-left: 19px;
                            position: relative;

                            .goto{
                                position: absolute;
                                width: 70px;
                                height: 30px;
                                background: #00b4ff;
                                right: 30px;
                                bottom: 10px;
                                text-align: center;
                                line-height: 30px;
                                color: #fff;
                                border-radius: 10px;
                                font-size: 13px;
                                cursor: pointer;
                                user-select: none;
                            }
                        }
                    }

                    .active{
                        display: block;
                    }

                    .hide{
                        display: none;
                    }

                }
            }

            .sl_3{
                width: 100%;
                height: 342px;
                background: #fff;
                box-shadow: 0px 0px 10px 0px rgba(218,207,204,0.6);
                border-radius: 10px;
                margin: 20px 0;

                &_top{
                    width: 90%;
                    height: 55px;
                    // background: red;
                    margin: auto;
                    border-bottom: 1px solid #e8e8e8;
                    line-height: 55px;

                    span{
                        font-size: 18px;
                        font-weight: bold;
                        float: left;

                        &::before{
                            content: '';
                            float: left;
                            width: 6px;
                            height: 18px;
                            background: #f76341;
                            margin-top: 18px;
                            margin-right: 5px;
                            border-radius: 3px;
                        }
                    }

                    a{
                        float: right;
                        height: 30px;
                        margin-top: 12px;
                        line-height: 30px;
                        font-size: 16px;
                        font-weight: bold;
                        color: #7d7d7d;
                    }
                }

                &_center{
                    width: 90%;
                    height: 174px;
                    // background: red;
                    margin: 10px auto;
                    border-bottom: 1px solid #e8e8e8;

                    &_rocation{
                        width: 100%;
                        height: 121px;
                        border-radius: 10px;
                        background: whitesmoke;
                        position: relative;
                        overflow: hidden;

                        img{
                            width: 100%;
                            display: none;
                        }

                        .left{
                            position: absolute;
                            width: 50px;
                            height: 50px;
                            background: url('../../img/L.png') no-repeat center center;
                            left: -50px;
                            top: 30px;
                            transition: all .3s;
                        }
                        .right{
                            position: absolute;
                            width: 50px;
                            height: 50px;
                            background: url('../../img/R.png') no-repeat center center;
                            right: -50px;
                            top: 30px;
                            transition: all .3s;
                        }


                        .sign{
                            width: 100px;
                            height: 20px;
                            // background: rgb(193, 83, 83);
                            position: absolute;
                            bottom: 5px;
                            left: 130px;

                            .sign1{
                                width: 30px;
                                height: 15px;
                                background: rgba(64, 224, 208, 0.728);
                                border-radius: 20px;
                                float: left;
                                transition: all .3s;
                            }
                            .sign2{
                                width: 15px;
                                height: 15px;
                                background: rgba(64, 224, 208, 0.728);
                                border-radius: 15px;
                                float: left;
                                margin-left: 5px;
                                transition: all .3s;
                            }
                            .sign3{
                                width: 15px;
                                height: 15px;
                                background: rgba(64, 224, 208, 0.728);
                                border-radius: 15px;
                                float: left;
                                margin-left: 5px;
                                transition: all .3s;
                            }
                        }


                        .active{
                            display: block;
                        }

                        .hide{
                            display: none;
                        }



                        &:hover{
                            .left{
                                left: 0;
                            }

                            .right{
                                right: 0;
                            }
                        }
                    }

                    &_title{
                        width: 100%;
                        height: 30px;
                        // background: lightcoral;
                        margin-top: 10px;
                        position: relative;


                        .title{
                            width: 100%;
                            height: 100%;
                            float: left;
                            text-indent: 10px;
                            text-align: left;
                            line-height: 30px;
                            position: absolute;
                            font-size: 13px;

                            .btn_to{
                                width: 20%;
                                height: 100%;
                                background: linear-gradient(39deg,#f74830 0%,#fa7d4c 100%);
                                position: absolute;
                                right: 5px;
                                top: 0;
                                border-radius: 8px;
                                line-height: 30px;
                                font-size: 13px;
                                font-weight: bold;
                                color: #fff;
                            }
                        }


                    }
                }

                &_bottom{
                    width: 90%;
                    height: 78px;
                    // background: red;
                    margin: auto;

                    div{
                        width: 100%;
                        height: 25px;
                        // background: sandybrown;
                        margin-top: 1px;

                        :first-child{
                            width: 60%;
                            height: 100%;
                            // background: rgb(208, 46, 46);
                            float: left;
                            line-height: 25px;
                            font-size: 14px;
                            text-align: left;
                        }

                        :last-child{
                            width: 40%;
                            height: 100%;
                            // background: seashell;
                            float: right;
                            line-height: 25px;
                            font-size: 14px;
                            text-align: right;
                            color: #f76341;
                        }
                    }
                }
            }

            .sl_4{
                width: 100%;
                height: 300px;
                background: #fff;
                box-shadow: 0px 0px 10px 0px rgba(218,207,204,0.6);
                border-radius: 10px;
                margin: 20px 0;

                &_top{
                    width: 90%;
                    height: 55px;
                    // background: red;
                    margin: auto;
                    border-bottom: 1px solid #e8e8e8;
                    line-height: 55px;

                    span{
                        font-size: 18px;
                        font-weight: bold;
                        float: left;

                        &::before{
                            content: '';
                            float: left;
                            width: 6px;
                            height: 18px;
                            background: #f76341;
                            margin-top: 18px;
                            margin-right: 5px;
                            border-radius: 3px;
                        }
                    }

                    a{
                        float: right;
                        height: 30px;
                        margin-top: 12px;
                        line-height: 30px;
                        font-size: 16px;
                        font-weight: bold;
                        color: #7d7d7d;
                    }
                }

                &_center{
                    width: 90%;
                    height: 135px;
                    // background: red;
                    margin: 10px auto;
                    border-bottom: 1px solid #e8e8e8;

                    &_rocation{
                        width: 100%;
                        height: 121px;
                        border-radius: 10px;
                        background: whitesmoke;
                        position: relative;
                        overflow: hidden;

                        img{
                            width: 100%;
                            display: none;
                        }

                        .left{
                            position: absolute;
                            width: 50px;
                            height: 50px;
                            background: url('../../img/L.png') no-repeat center center;
                            left: -50px;
                            top: 30px;
                            transition: all .3s;
                        }
                        .right{
                            position: absolute;
                            width: 50px;
                            height: 50px;
                            background: url('../../img/R.png') no-repeat center center;
                            right: -50px;
                            top: 30px;
                            transition: all .3s;
                        }


                        .sign{
                            width: 100px;
                            height: 20px;
                            // background: rgb(193, 83, 83);
                            position: absolute;
                            bottom: 5px;
                            left: 130px;

                            .sign1{
                                width: 30px;
                                height: 15px;
                                background: rgba(64, 224, 208, 0.728);
                                border-radius: 20px;
                                float: left;
                                transition: all .3s;
                            }
                            .sign2{
                                width: 15px;
                                height: 15px;
                                background: rgba(64, 224, 208, 0.728);
                                border-radius: 15px;
                                float: left;
                                margin-left: 5px;
                                transition: all .3s;
                            }
                            .sign3{
                                width: 15px;
                                height: 15px;
                                background: rgba(64, 224, 208, 0.728);
                                border-radius: 15px;
                                float: left;
                                margin-left: 5px;
                                transition: all .3s;
                            }
                        }


                        .active{
                            display: block;
                        }

                        .hide{
                            display: none;
                        }



                        &:hover{
                            .left{
                                left: 0;
                            }

                            .right{
                                right: 0;
                            }
                        }
                    }

                    &_title{
                        width: 100%;
                        height: 30px;
                        // background: lightcoral;
                        margin-top: 10px;
                        position: relative;


                        .title{
                            width: 100%;
                            height: 100%;
                            float: left;
                            text-indent: 10px;
                            text-align: left;
                            line-height: 30px;
                            position: absolute;
                            font-size: 13px;

                            .btn_to{
                                width: 20%;
                                height: 100%;
                                background: linear-gradient(39deg,#f74830 0%,#fa7d4c 100%);
                                position: absolute;
                                right: 5px;
                                top: 0;
                                border-radius: 8px;
                                line-height: 30px;
                                font-size: 13px;
                                font-weight: bold;
                                color: #fff;
                            }
                        }


                    }
                }

                &_bottom{
                    a{
                        display: block;
                        text-align: left;
                        text-indent: 30px;
                        width: 100%;
                        height: 20px;
                        font-size: 14px;
                        overflow: hidden;
                        margin-top: 7px;
                        position: relative;

                        &::before{
                            content: '';
                            width: 5px;
                            height: 5px;
                            background: red;
                            position: absolute;
                            left: 17px;
                            top: 7px;
                        }
                    }
                }
            }

            .sl_5{
                width: 100%;
                height: 390px;
                background: #fff;
                box-shadow: 0px 0px 10px 0px rgba(218,207,204,0.6);
                border-radius: 10px;
                margin: 20px 0;

                &_top{
                    width: 90%;
                    height: 55px;
                    // background: red;
                    margin: auto;
                    border-bottom: 1px solid #e8e8e8;
                    line-height: 55px;

                    span{
                        font-size: 18px;
                        font-weight: bold;
                        float: left;

                        &::before{
                            content: '';
                            float: left;
                            width: 6px;
                            height: 18px;
                            background: #f76341;
                            margin-top: 18px;
                            margin-right: 5px;
                            border-radius: 3px;
                        }
                    }

                    a{
                        float: right;
                        height: 30px;
                        margin-top: 12px;
                        line-height: 30px;
                        font-size: 16px;
                        font-weight: bold;
                        color: #7d7d7d;
                    }
                }

                &_center{
                    width: 90%;
                    height: 170px;
                    margin: 25px auto;
                    // background: red;
                    border-bottom: 1px solid #e8e8e8;

                    h3{
                        width: 100%;
                        height: 30px;
                        text-align: left;
                    }

                    p{
                        text-align: left;
                        line-height: 27px;
                        font-size: 14px;
                    }
                }

                &_bottom{
                    width: 90%;
                    height: 100px;
                    // background: red;
                    margin: 10px auto;

                    div{
                        width: 100%;
                        height: 39px;
                        // background: olive;

                        span{
                            display: inline-block;
                            width: 272px;
                            height: 30px;
                            border-radius: 14px;
                            background: #e8e8e8;
                            float: left;
                            line-height: 30px;
                            text-align: left;
                            text-indent: 30px;
                            font-size: 14px;
                        }

                        a{
                            display: inline-block;
                            float: right;
                            width: 45px;
                            height: 24px;
                            line-height: 24px;
                            background: linear-gradient(39deg,#f74830 0%,#fa7d4c 100%);
                            border-radius: 4px;
                            color: #fff;
                        }

                        &:nth-child(2){
                            margin: 20px 0;
                        }
                    }
                }
            }
        }

        .section_middle{
            width: 490px;
            height: 103%;
            // background: red;
            float: left;
            margin-left: 20px;
            border-radius: 10px;
            position: relative;


            &_maintitle{
                width: 100%;
                height: 54px;
                background: #fff;
                border-radius: 10px 10px 0 0 ;
                box-shadow: 1px 0px 8px #a49f9f7a;
                position: absolute;
                z-index: 99;

                span{
                    display: inline-block;
                    float: left;
                    width: 100px;
                    height: 100%;
                    // background: rgb(125, 112, 112);
                    margin-left: 20px;
                    line-height: 54px;
                    font-size: 18px;
                    user-select: none;
                    transition: all .3s;
                }

                div{
                    position: absolute;
                    width: 62px;
                    height: 10px;
                    background: #f76341;
                    border-radius: 5px;
                    z-index: 9999;
                    bottom: -5px;
                    left: 39px;
                    transition: all .3s;
                }



                .active{
                    font-size: 20px;
                    font-weight: bold;
                }
            }

            &_maincontent{
                width: 100%;
                height: 1580px;
                background: rebeccapurple;
                position: relative;
                margin-top: 53px;



                .hot_info{
                    width: 100%;
                    height: 103%;
                    background: #fff;
                    position: absolute;
                    border-radius: 0 0 10px 10px;
                    display: none;
                    box-shadow: 0px 0px 10px 0px rgba(218,207,204,0.6);
                    border-radius: 0 0 10px 10px;

                    &_1{
                        width: 100%;
                        height: 364px;
                        // background: red;

                        &_top_one{
                            width: 90%;
                            height: 96px;
                            margin: 0 auto;
                            // background: orange;
                            position: relative;
                            border-bottom: 1px solid #ededed;

                            p{
                                width: 90%;
                                height: 30px;
                                // background: orchid;


                                span{
                                    float: left;
                                    font-size: 18px;
                                    color: #ff2d22;
                                    font-weight: bold;

                                    &:last-child{
                                        float: right;
                                        font-size: 18px;
                                        margin-right: 30px;
                                    }
                                }


                                &:first-child{
                                    position: absolute;
                                    top: 14px;
                                    left: 25px;
                                }

                                &:last-child{
                                    position: absolute;
                                    top: 55px;
                                    left: 25px;

                                    a{
                                        display: inline-block;
                                        float: left;
                                        font-size: 13px;
                                    }
                                    span{
                                        display: inline-block;
                                        font-size: 13px;
                                        float: left;
                                        margin: 0 5px;
                                    }
                                }
                            }

                        }


                        &_top_two{
                            width: 90%;
                            height: 96px;
                            margin: 0 auto;
                            // background: orange;
                            position: relative;
                            border-bottom: 1px solid #ededed;

                            p{
                                width: 90%;
                                height: 30px;
                                // background: orchid;


                                span{
                                    float: left;
                                    font-size: 18px;
                                    color: #ff2d22;
                                    font-weight: bold;

                                    &:last-child{
                                        float: right;
                                        font-size: 18px;
                                        margin-right: 30px;
                                    }
                                }


                                &:first-child{
                                    position: absolute;
                                    top: 14px;
                                    left: 25px;
                                }

                                &:last-child{
                                    position: absolute;
                                    top: 55px;
                                    left: 25px;

                                    a{
                                        display: inline-block;
                                        float: left;
                                        font-size: 13px;
                                    }
                                    span{
                                        display: inline-block;
                                        font-size: 13px;
                                        float: left;
                                        margin: 0 5px;
                                    }
                                }
                            }

                        }

                        &_bottom{
                            width: 100%;

                            // background: lightcyan;
                            margin-top: 20px;

                            p{
                                width: 90%;
                                height: 30px;
                                margin: 5px auto;
                                // background: lightgreen;


                                span{
                                    display: inline-block;


                                    &:nth-child(1){
                                        float: left;
                                        width: 42px;
                                        height: 22px;
                                        background: red;
                                        border-radius: 5px;
                                        line-height: 22px;
                                        font-size: 14px;
                                        color: #fff;
                                        background: linear-gradient(39deg,#30aff7 0%,#4cf4fa 100%);

                                    }
                                    &:nth-child(2){
                                        float: left;
                                        font-size: 14px;
                                        margin-left: 10px;
                                    }
                                    &:nth-child(3){
                                        float: right;
                                        font-size: 12px;
                                        color: #b1b1b1;
                                    }
                                }


                            }
                        }
                    }

                    &_2{
                        &_list{
                            width: 90%;
                            height: 167px;
                            // background: rgb(45, 44, 44);
                            margin: 0 auto;
                            position: relative;

                            .title{
                                width: 111%;
                                height: 38px;
                                background: #fff;
                                position: absolute;
                                top: 0;
                                left: -24px;
                                box-shadow: 0px 1px 3px #dcdbdb;
                                z-index: 9999;


                                span{
                                    display: inline-block;
                                    float: left;
                                    width: 10px;
                                    height: 10px;
                                    background: #f9856a;
                                    border-radius: 3px;
                                    margin-top: 14px;
                                    margin-left: 25px;
                                }

                                p{
                                    display: inline-block;
                                    float: left;
                                    height: 100%;
                                    // background: red;
                                    margin-left: 20px;
                                    font-size: 16px;
                                    font-weight: bold;
                                    line-height: 38px;
                                }
                            }

                            .content{
                                width: 100%;
                                height: 189px;
                                // background: red;
                                position: relative;

                                p{
                                    position: absolute;
                                    width: 100%;
                                    height: 30px;
                                    // background: lightcoral;

                                    &:nth-child(1){
                                        bottom: 0;

                                        span{
                                            display: inline-block;

                                            &:nth-child(1){
                                                display: inline-block;
                                                float: left;
                                                width: 10px;
                                                height: 10px;
                                                background: #dcd9d978;
                                                border-radius: 3px;
                                                margin-top: 11px;
                                            }
                                            &:nth-child(2){
                                                display: inline-block;
                                                float: left;
                                                height: 100%;
                                                font-size: 14px;
                                                line-height: 30px;
                                                // background: lemonchiffon;
                                                margin-left: 20px;
                                            }
                                            &:nth-child(3){
                                                display: inline-block;
                                                float: right;
                                                width: 50px;
                                                height: 20px;
                                                // background: lightgray;
                                                margin-top: 5px;
                                                line-height: 20px;
                                                font-size: 12px;
                                                color: #b1b1b1;
                                            }
                                        }
                                    }
                                    &:nth-child(2){
                                        bottom: 35px;

                                        span{
                                            display: inline-block;

                                            &:nth-child(1){
                                                display: inline-block;
                                                float: left;
                                                width: 10px;
                                                height: 10px;
                                                background: #dcd9d978;
                                                border-radius: 3px;
                                                margin-top: 11px;
                                            }
                                            &:nth-child(2){
                                                display: inline-block;
                                                float: left;
                                                height: 100%;
                                                font-size: 14px;
                                                line-height: 30px;
                                                // background: lemonchiffon;
                                                margin-left: 20px;
                                            }
                                            &:nth-child(3){
                                                display: inline-block;
                                                float: right;
                                                width: 50px;
                                                height: 20px;
                                                // background: lightgray;
                                                margin-top: 5px;
                                                line-height: 20px;
                                                font-size: 12px;
                                                color: #b1b1b1;
                                            }
                                        }
                                    }
                                    &:nth-child(3){
                                        bottom: 70px;

                                        span{
                                            display: inline-block;

                                            &:nth-child(1){
                                                display: inline-block;
                                                float: left;
                                                width: 10px;
                                                height: 10px;
                                                background: #dcd9d978;
                                                border-radius: 3px;
                                                margin-top: 11px;
                                            }
                                            &:nth-child(2){
                                                display: inline-block;
                                                float: left;
                                                height: 100%;
                                                font-size: 14px;
                                                line-height: 30px;
                                                // background: lemonchiffon;
                                                margin-left: 20px;
                                            }
                                            &:nth-child(3){
                                                display: inline-block;
                                                float: right;
                                                width: 50px;
                                                height: 20px;
                                                // background: lightgray;
                                                margin-top: 5px;
                                                line-height: 20px;
                                                font-size: 12px;
                                                color: #b1b1b1;
                                            }
                                        }
                                    }
                                    &:nth-child(4){
                                        bottom: 105px;

                                        span{
                                            display: inline-block;

                                            &:nth-child(1){
                                                display: inline-block;
                                                float: left;
                                                width: 10px;
                                                height: 10px;
                                                background: #dcd9d978;
                                                border-radius: 3px;
                                                margin-top: 11px;
                                            }
                                            &:nth-child(2){
                                                display: inline-block;
                                                float: left;
                                                height: 100%;
                                                font-size: 14px;
                                                line-height: 30px;
                                                // background: lemonchiffon;
                                                margin-left: 20px;
                                            }
                                            &:nth-child(3){
                                                display: inline-block;
                                                float: right;
                                                width: 50px;
                                                height: 20px;
                                                // background: lightgray;
                                                margin-top: 5px;
                                                line-height: 20px;
                                                font-size: 12px;
                                                color: #b1b1b1;
                                            }
                                        }
                                    }

                                }
                            }
                        }
                    }

                    .sign{
                        width: 200px;
                        height: 30px;
                        // background: red;
                        position: absolute;
                        bottom: 10px;
                        left: 133px;

                        span{
                            display: inline-block;


                            &:nth-child(1){
                                background: url('../../img/L001.png') no-repeat center;
                                width: 24px;
                                height: 15px;
                                float: left;
                            }
                            &:nth-child(2){
                                width: 14px;
                                height: 14px;
                                background: salmon;
                                border-radius: 50%;
                                float: left;
                                margin-left: 40px;
                            }
                            &:nth-child(3){
                                width: 14px;
                                height: 14px;
                                background: rgb(135, 133, 133);
                                border-radius: 50%;
                                float: left;
                                margin-left: 10px;
                            }
                            &:nth-child(4){
                                width: 14px;
                                height: 14px;
                                background: rgb(148, 146, 145);
                                border-radius: 50%;
                                float: left;
                                margin-left: 10px;
                            }
                            &:nth-child(5){
                                background: url('../../img/R001.png') no-repeat center;
                                width: 24px;
                                height: 15px;
                                float: right;

                            }

                        }
                    }
                }
                .daxia{
                    width: 100%;
                    height: 1627px;
                    background: #fff;
                    position: absolute;
                    display: none;
                    box-shadow: 0px 0px 10px 0px rgba(218,207,204,0.6);
                    border-radius: 0 0 10px 10px;

                    &_page{
                        width: 90%;
                        height: 240px;
                        // background: rgb(231, 228, 228);
                        margin: 0 auto;
                        border-left: 1px solid rgba(199, 196, 201, 0.673);
                        position: relative;
                        margin-top: 20px;


                        i{
                            display: block;
                            position: absolute;
                            width: 15px;
                            height: 15px;
                            background: rgba(255, 0, 170, 0.932);
                            left: -8px;
                            border-radius: 50%;
                            top: 28px;
                        }

                        &_1{
                            width: 98%;
                            height: 100%;
                            // background: red;
                            box-sizing: border-box;

                            margin-left: 30px;


                            .title{
                                width: 100%;
                                height: 30px;
                                // background: burlywood;
                                display: inline-block;
                                margin-top: 20px;
                                line-height: 30px;
                                font-size: 16px;
                                text-align: left;
                                font-weight: bold;
                            }
                            .content{
                                width: 100%;
                                height: 100px;
                                // background: chartreuse;
                                margin: 0;
                                margin-top: 15px;

                                div{
                                    width: 144px;
                                    height: 100%;
                                    float: left;
                                    border-radius: 10px;
                                    overflow: hidden;


                                    img{
                                        width: 100%;
                                        transform: scale(1.1);


                                        &:hover{
                                            transform: scale(1.3);
                                        }
                                    }
                                }

                                p{
                                    width: 58%;
                                    height: 100%;
                                    // background: lightcyan;
                                    float: left;
                                    margin-left: 25px;
                                    text-align: left;
                                    font-size: 13px;
                                }
                            }
                            .introd{
                                width: 100%;
                                height: 30px;
                                // background: brown;255
                                margin-top: 33px;

                                span{
                                    display: inline-block;

                                    &:nth-child(1){
                                        width: 115px;
                                        height: 20px;
                                        // background: red;
                                        float: left;
                                        margin-top: 5px;
                                        line-height: 20px;
                                        font-size: 13px;
                                    }
                                    &:nth-child(2){
                                        width: 80px;
                                        height: 24px;
                                        float: right;
                                        margin-top: 2px;
                                        border: solid 1px #f26043;
                                        line-height: 24px;
                                        border-radius: 14px;
                                        color: #f26043;
                                        margin-right: 20px;
                                    }
                                }
                            }
                        }
                    }

                    &_sign{
                        width: 200px;
                        height: 30px;
                        // background: red;
                        position: absolute;
                        bottom: 10px;
                        left: 133px;

                        span{
                            display: inline-block;


                            &:nth-child(1){
                                background: url('../../img/L001.png') no-repeat center;
                                width: 24px;
                                height: 15px;
                                float: left;
                            }
                            &:nth-child(2){
                                width: 14px;
                                height: 14px;
                                background: salmon;
                                border-radius: 50%;
                                float: left;
                                margin-left: 40px;
                            }
                            &:nth-child(3){
                                width: 14px;
                                height: 14px;
                                background: rgb(135, 133, 133);
                                border-radius: 50%;
                                float: left;
                                margin-left: 10px;
                            }
                            &:nth-child(4){
                                width: 14px;
                                height: 14px;
                                background: rgb(148, 146, 145);
                                border-radius: 50%;
                                float: left;
                                margin-left: 10px;
                            }
                            &:nth-child(5){
                                background: url('../../img/R001.png') no-repeat center;
                                width: 24px;
                                height: 15px;
                                float: right;

                            }

                        }
                    }
                }
                .new_hanhua{
                    width: 100%;
                    height: 1627px;
                    background: red;
                    position: absolute;
                    display: none;
                    border-radius: 0 0 10px 10px;

                }
                .introduction{
                    width: 100%;
                    height: 1627px;
                    background: blue;
                    position: absolute;
                    display: none;
                    border-radius: 0 0 10px 10px;

                }

                .active{
                    display: block;
                }
            }

            &_bottomcontent{
                width: 100%;
                height: 210px;
                margin-top: 80px;

                .box-card{
                    width: 100%;
                    height: 100%;
                    background: #fff;
                    border-radius: 10px;
                    position: relative;

                    .head{
                        width: 100%;
                        height: 56px;
                        position: relative;

                        span{
                            display: inline-block;
                            float: left;
                            cursor: pointer;
                            font-size: 18px;

                            &:nth-child(1){
                                width: 90px;
                                height: 100%;
                                line-height: 36px;
                            }

                            &:nth-child(2){
                                width: 90px;
                                height: 100%;
                                line-height: 36px;
                                margin-left: 40px;
                            }


                            &:hover{
                                font-weight: bold;
                                font-size: 20px;
                            }
                        }

                        .active{
                            font-weight: bold;
                            font-size: 20px;
                            color: red;
                        }




                    }
                    ul{
                        width: 95%;
                        height: 148px;
                        background: #fff;
                        position: absolute;
                        bottom: 5px;
                        left: 15px;


                        li{
                            width: 100%;
                            height: 21px;
                            margin-top: 15px;

                            span{
                                float: left;
                                font-size: 14px;
                                display: block;
                                text-align: left;

                                &:nth-child(1){
                                    width: 8px;
                                    height: 8px;
                                    background: #eaeaea;
                                    border-radius: 2px;
                                    margin-top: 5px;
                                }
                                &:nth-child(2){
                                    margin-left: 20px;
                                    width: 70%;
                                    height: 100%;
                                    overflow: hidden;

                                }
                                &:nth-child(3){
                                    font-size: 18px;
                                    margin-left: 40px;
                                }
                                &:nth-child(4){
                                    font-size: 13px;
                                    color: #b1b1b1;
                                    margin-top: 2px;
                                    margin-left: 5px;
                                }
                            }
                        }
                    }
                }

            }


        }

        .section_right{
            width: 300px;
            height: 100%;
            // background: red;
            float: left;
            margin-left: 20px;

            &_advert{
                width: 100%;
                height: 425px;
                overflow: hidden;
                border-radius: 10px;
                transition: all .4s ease;

                img{
                    width: 100%;
                    transition: all .3s ease;

                    &:hover{
                        transform: scale(1.2);
                    }
                }

            }

            &_newload{
                width: 100%;
                height: 625px;
                // background: blueviolet;
                margin-top: 20px;

                .box-card{
                    height: 100%;
                    border-radius: 10px;

                    .card-header{
                        width: 100%;
                        height: 40px;
                        // background: red;

                        span{
                            display: inline-block;

                            &:nth-child(1){
                                width: 6px;
                                height: 18px;
                                background: #f76341;
                                float: left;
                                margin-top: 10px;
                                border-radius: 3px;
                            }

                            &:nth-child(2){
                                width: 100px;
                                height: 100%;
                                text-align: left;
                                float: left;
                                margin-left: 5px;
                                line-height: 40px;
                                font-weight: bold;
                                font-size: 17px;
                            }
                            &:nth-child(3){
                                width: 100px;
                                height: 100%;
                                text-align: right;
                                float: right;
                                line-height: 40px;
                                font-weight: bold;
                                font-size: 17px;
                                color: #7d7d7d;
                            }
                        }
                    }

                    .newdown_title{
                        width: 100%;
                        height: 30px;
                        // background: lightcyan;
                        margin-top: 10px;

                        span{
                            display: inline-block;

                            &:nth-child(1){
                                float: left;
                                width: 18px;
                                height: 18px;
                                border-radius: 4px;
                                font-size: 12px;
                                background: #f9594d;
                                margin-top: 5px;
                                color: #fff;
                            }
                            &:nth-child(2){
                                float: left;
                                height: 100%;
                                line-height: 30px;
                                font-size: 14px;
                                margin-left: 10px;
                                text-align: left;
                            }
                            &:nth-child(3){
                                float: right;
                                height: 100%;
                                line-height: 30px;
                                font-size: 14px;
                                text-align: right;

                            }
                        }
                    }

                    .newdown_card{
                        width: 100%;
                        height: 126px;
                        margin-top: 10px;
                        overflow: hidden;
                        position: relative;
                        border-radius: 10px;

                        img{
                            width: 100%;
                            height: 100%;
                            background: red;
                            opacity: .2;
                            transition: all .3s;
                        }

                        div{
                            width: 100%;
                            height: 100%;
                            background: rgba(255, 255, 255, 0.3);
                            position: absolute;
                            top: 0;
                            user-select: none;

                            h4{
                                height: 41px;
                                position: absolute;
                                left: 11px;
                                text-align: center;
                                line-height: 41px;
                                border-bottom: 1px solid rgba(142, 134, 134, 0.626);
                            }

                            p{
                                width: 100%;
                                height: 22px;
                                position: absolute;
                                top: 47px;
                                text-align: left;
                                text-indent: 10px;
                                font-size: 14px;
                            }

                            .tag{
                                width: 80%;
                                height: 30px;
                                text-align: left;
                                position: absolute;
                                top: 72px;
                                margin-left: 10px;
                                font-size: 14px;
                                background: none;
                            }


                        }

                        &:hover img{
                            transform: scale(1.2);
                        }

                        a:hover{
                            color: #000;
                        }
                    }

                    .hide{
                        display: none;
                    }
                }
            }

            &_soonComing{
                width: 100%;
                height: 834px;
                // background: blueviolet;
                margin-top: 20px;

                .box-card{
                    height: 100%;
                    border-radius: 10px;

                    .card-header{
                        width: 100%;
                        height: 40px;
                        // background: red;

                        span{
                            display: inline-block;

                            &:nth-child(1){
                                width: 6px;
                                height: 18px;
                                background: #f76341;
                                float: left;
                                margin-top: 10px;
                                border-radius: 3px;
                            }

                            &:nth-child(2){
                                width: 100px;
                                height: 100%;
                                text-align: left;
                                float: left;
                                margin-left: 5px;
                                line-height: 40px;
                                font-weight: bold;
                                font-size: 17px;
                            }
                            &:nth-child(3){
                                width: 100px;
                                height: 100%;
                                text-align: right;
                                float: right;
                                line-height: 40px;
                                font-weight: bold;
                                font-size: 17px;
                                color: #7d7d7d;
                            }
                        }
                    }

                    .news_card{
                        width: 100%;
                        height: 141px;
                        // background: red;
                        border-left: 1px solid #dadada;
                        position: relative;

                        .news_date{
                            text-align: left;
                            text-indent: 30px;
                            font-size: 14px;
                        }

                        .news_card_img{
                            width: 86%;
                            height: 101px;
                            margin-left: 30px;
                            margin-top: 8px;
                            border-radius: 10px;
                            position: relative;
                            overflow: hidden;


                            p{
                                position: absolute;
                                bottom: 10px;
                                left: 17px;
                                color: #fff;
                                font-weight: bold;

                            }

                            img{
                                width: 100%;
                                transition: all .3s;

                                &:hover{
                                    transform: scale(1.1);
                                }
                            }


                        }

                        .dot{
                            width: 15px;
                            height: 15px;
                            background: blanchedalmond;
                            position: absolute;
                            left: -7px;
                            top: 0;
                            border-radius: 50%;
                        }
                    }
                }
            }
        }

        a:hover{
            color: rgb(235, 50, 50);
        }

        li{
            list-style: none;
        }

    }
</style>
