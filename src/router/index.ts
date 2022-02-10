/** @format */

import { createRouter, createWebHistory, RouteRecordRaw } from 'vue-router'
import store from '../store/index'

import { ElMessage } from 'element-plus'

import { getLogin } from '../api/youxi_ax'
// import { useStore } from 'vuex'

// declare module 'vue-router' {
//   interface RouteMeta {
//     title: string,
//     roles?: Array<string | number> | string
//   }

//   interface _RouteRecordBase {
//     hidden?: boolean
//   }
// }

const routes: Array<RouteRecordRaw> = [
    {
        path: '/',
        redirect: '/youxia',
    },
    {
        path: '/about',
        name: 'About',
        component: () => import('../views/About.vue'),
        children: [
            { path: 'h1', name: 'H1', component: () => import('../views/h1.vue') },
            { path: 'h2', name: 'H2', component: () => import('../views/h2.vue') },
        ],
    },
    {
        path: '/youxia',
        name: 'Main',
        component: () => import('@/views/main.vue'),
        meta: { title: 'Main', icon: 'dashboard', affix: true },
    },
    {
        path: '/information/:user',
        name: 'Information',
        component: () => import('../components/information/index.vue'),
        meta: { title: 'information', needLogin: true },
    },
    {
        name: 'RichText',
        path: '/richtext',
        component: () => import('@/views/RichText.vue'),
        meta: { title: 'RichText' },
    },
    {
        name: 'Login',
        path: '/login',
        component: () => import('../views/login/login.vue'),
        meta: { title: 'Login' },
    },

    //手机端
    {
        name: 'Mobile',
        path: '/youxiaMobile',
        component: () => import('../views/iphone/main.vue'),
        meta: { title: 'Mobile' },
    },
    //凤凰商城
    {
        name: 'Shop',
        path: '/fenghuang',
        component: () => import('../views/GameShop/main.vue'),
        meta: { title: 'Shop' },
    },
    {
        name: 'ShopId',
        path: '/fenghuang/:id',
        component: () => import('../views/GameShop/ShopDetail/index.vue'),
        meta: { title: 'ShopId' },
    },
    {
        name: 'ShopLeron',
        path: '/fenghuang/leron/:id',
        component: () => import('../views/GameShop/ShopLeron/index.vue'),
        meta: { title: 'ShopLeron' },
    },
]

const router = createRouter({
    history: createWebHistory(),
    routes,
})

//全局路由前置守卫
router.beforeEach(async (to, next) => {
    const data = await getLogin()

    const username = data.data.username
    const password = data.data.password
    const vip = data.data.isVip
    let isLogin = false
    const isVip = vip == 1 ? true : false

    if (username) {
        isLogin = true
    } else {
        isLogin = false
    }

    store.dispatch('user/changeLogin', isLogin)
    store.dispatch('user/setName', username)
    store.dispatch('user/setPassword', password)
    store.dispatch('user/setVip', isVip)

    // console.log(store);

    if (to.meta.needLogin == true) {
        if (store.state.user.isLogin) {
            next
        } else {
            ElMessage({
                showClose: true,
                message: '请先登入',
                type: 'error',
                duration: 2000,
            })
            window.location.href = '/login'
        }
    }

    if (to.path == '/login') {
        if (store.state.user.isLogin) {
            router.push('/youxia')
            ElMessage({
                message: '成功登入',
                type: 'success',
                duration: 2000,
            })
        } else {
            next
        }
    }
})
// 全局路由后置守卫
router.afterEach(() => {
    console.log('全局路由后置守卫')
})

export default router
