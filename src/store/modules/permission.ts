/** @format */

import { MutationTree, ActionTree } from 'vuex'
import { RouteRecordRaw } from 'vue-router'
// import router from '@/router'
import { rootStateInterface } from '../index'
// import { aysncRouter } from '@/router/index'

interface permissionSatetInterface {
    router: Array<RouteRecordRaw>
}

type filterAsyncRoutesType = (
    router: Array<RouteRecordRaw>,
    roles: Array<string>,
    parentName?: string
) => Array<RouteRecordRaw>
type hasPermissionType = (route: RouteRecordRaw, roles: Array<string>) => boolean

const hasPermission: hasPermissionType = (route, roles) => {
    if (route.meta && route.meta.roles) {
        return roles.some(role =>
            ((route.meta as Record<string | number | symbol, unknown>).roles as Array<number | string>).includes(role)
        )
    } else {
        return true
    }
}

// const addrouter = (routes: Array<RouteRecordRaw>) => {
// routes.forEach(ele => router.addRoute(ele))
// }

const filterAsyncRoutes: filterAsyncRoutesType = (routes, roles) => {
    const result: Array<RouteRecordRaw> = []
    routes.forEach(route => {
        const tmp = { ...route }
        if (hasPermission(tmp, roles)) {
            // 动态添加至路由
            if (tmp.children) {
                tmp.children = filterAsyncRoutes(tmp.children, roles)
                if (tmp.children.length > 0) result.push(tmp)
            } else {
                result.push(tmp)
            }
        }
    })
    return result
}

const state = (): permissionSatetInterface => ({
    router: [],
})

const mutations: MutationTree<permissionSatetInterface> = {
    setRouter: (state, router) => {
        state.router = router
    },
}

const actions: ActionTree<permissionSatetInterface, rootStateInterface> = {
    // generateRoutes: async ({ commit }, roles) => {
    // const route = filterAsyncRoutes(aysncRouter, roles)
    // commit('setRouter', route)
    // addrouter(route)
    // return route
    // }
}

export default {
    namespaced: true,
    state,
    mutations,
    actions,
}
